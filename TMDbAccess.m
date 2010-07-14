//
//    Brainslug is a media center application.
//    Copyright (C) 2009 Benjamin Prucha
//
//    This program is free software: you can redistribute it and/or modify
//    it under the terms of the GNU General Public License as published by
//    the Free Software Foundation, either version 3 of the License, or
//    (at your option) any later version.
//
//    This program is distributed in the hope that it will be useful,
//    but WITHOUT ANY WARRANTY; without even the implied warranty of
//    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//    GNU General Public License for more details.
//
//    You should have received a copy of the GNU General Public License
//    along with this program.  If not, see <http://www.gnu.org/licenses/>.

#import "TMDbAccess.h"

NSString * const TMDbAPIKey = @"8ead08cfbd7394c2a60522e2c5ecd4cc";

@implementation TMDbIdentifier
@synthesize name, url;
@end

@implementation TMDbCountry
@synthesize code;
@end

@implementation TMDbImage
@synthesize imageID, size;
@end

@implementation TMDbSearchResult
@synthesize searchScore, popularity, rating, runtime, tmdbID, imdbID, budget, revenue, title,
	type, tmdbURL, overview, homepageURL, trailerURL, releaseDate, productionCountries,
	peopleInvolved, categories, posters, backdrops;	
@end

@implementation TMDbAccess

-(NSArray*)getCountriesForXMLNodes:(NSArray*)xmlNodes {
	NSError* error = nil;
	NSMutableArray* identifiers = [ NSMutableArray arrayWithCapacity: [ xmlNodes count ] ];
	if ( [ xmlNodes count ] )
		for ( NSXMLNode* identifierNode in xmlNodes ) {
			TMDbCountry* identifier = [ [ TMDbCountry alloc ] init ];
			identifier.name = [ [ [ identifierNode nodesForXPath: @"@name" error: &error ] lastObject ] stringValue ];
			identifier.url = [ [ [ identifierNode nodesForXPath: @"@url" error: &error ] lastObject ]stringValue ];
			identifier.code = [ [ [ identifierNode nodesForXPath: @"@code" error: &error ] lastObject ]stringValue ];
			[ identifiers addObject: identifier ];
		}
	return identifiers;
}

// returns a dictionary of images split by type
-(NSDictionary*)getImagesForXMLNodes:(NSArray*)xmlNodes {
	NSMutableDictionary* images = [ NSMutableDictionary dictionary ];
	NSArray* posters = [ NSArray array ];
	NSArray* backdrops = [ NSArray array ];

	if ( [ xmlNodes count ] )
		for ( NSXMLElement* imageNode in xmlNodes ) {
			NSArray* imageAttributes = [ imageNode attributes ];
			TMDbImage* image = [ [ TMDbImage alloc ] init ];
			for ( NSXMLNode* imageAttribute in imageAttributes ) {
				NSAssert( [ imageAttribute kind ] == NSXMLAttributeKind, @"Unexpected xml node. Expecting attributes only." );
				NSString* attributeName = [ imageAttribute name ];
				if ( [ attributeName isEqualToString: @"type" ] ) {
					NSString* imageType = [ imageAttribute stringValue ];
					if ( [ imageType isEqualToString: @"poster" ] )
						posters = [ posters arrayByAddingObject: image ];
					else if ( [ imageType isEqualToString: @"backdrop" ] )
						backdrops = [ posters arrayByAddingObject: image ];
				}
				else if ( [ attributeName isEqualToString: @"url" ] )
					image.url = [ imageAttribute stringValue ];
				else if ( [ attributeName isEqualToString: @"size" ] )
					image.size = [ imageAttribute stringValue ];
				else if ( [ attributeName isEqualToString: @"id" ] )
					image.imageID = [ NSNumber numberWithInt: [[ imageAttribute stringValue ] intValue ] ];
			}
		}
	[ images setObject: posters forKey: @"posters" ];
	[ images setObject: backdrops forKey: @"backdrops" ];
	return images;
}

-(TMDbSearchResult*)getMovieInfoFromXMLNode:(NSXMLNode*)node {
		TMDbSearchResult* searchResult = [ [ TMDbSearchResult alloc ] init ];
		NSError* error = nil;
		searchResult.title = [[[node nodesForXPath: @"name" error: &error] lastObject] stringValue];
		searchResult.searchScore = [ NSNumber numberWithDouble: [ [ [[node nodesForXPath: @"score" error: &error] lastObject] stringValue ] doubleValue ] ];
		searchResult.popularity = [ NSNumber numberWithInt: [ [ [[node nodesForXPath: @"popularity" error: &error] lastObject] stringValue ] intValue ] ];
		searchResult.rating = [ NSNumber numberWithDouble: [ [ [[node nodesForXPath: @"rating" error: &error] lastObject] stringValue ] doubleValue ] ];
		searchResult.runtime = [ NSNumber numberWithInt: [ [[[node nodesForXPath: @"runtime" error: &error] lastObject] stringValue] intValue ] ];
		searchResult.tmdbID = [ NSNumber numberWithInt: [ [[[node nodesForXPath: @"id" error: &error] lastObject] stringValue] intValue ] ];
		searchResult.imdbID = [[[node nodesForXPath: @"imdb" error: &error] lastObject] stringValue];
		searchResult.budget = [ NSNumber numberWithInt: [[[[node nodesForXPath: @"budget" error: &error] lastObject] stringValue] intValue ] ];
		searchResult.revenue = [ NSNumber numberWithInt: [[[[node nodesForXPath: @"revenue" error: &error] lastObject] stringValue] intValue ] ];
		searchResult.type = [[[node nodesForXPath: @"type" error: &error] lastObject] stringValue];

		searchResult.tmdbURL = [[[node nodesForXPath: @"url" error: &error] lastObject] stringValue];
		searchResult.overview = [[[node nodesForXPath: @"overview" error: &error] lastObject] stringValue];
		searchResult.homepageURL = [[[node nodesForXPath: @"homepage" error: &error] lastObject] stringValue];
		searchResult.trailerURL = [[[node nodesForXPath: @"trailer" error: &error] lastObject] stringValue];
		
		NSString *release = [[[node nodesForXPath: @"released" error: &error] lastObject] stringValue];

		searchResult.releaseDate = [NSDate dateWithString: [NSString stringWithFormat: @"%@ 00:00:00 +0000", release]];
		if (searchResult.releaseDate == nil)
			searchResult.releaseDate = [NSDate date];
		
		searchResult.productionCountries = [ self getCountriesForXMLNodes: [ node nodesForXPath: @"countries/country" error: &error ] ];
		
		NSDictionary* allImages = [ self getImagesForXMLNodes: [ node nodesForXPath: @"images/image" error: &error ] ];
		searchResult.posters = [ allImages objectForKey: @"posters" ];
		searchResult.backdrops = [ allImages objectForKey: @"backdrops" ];

		return searchResult;
}

-(NSArray*)createMoviesFromXMLDocument:(NSXMLDocument*)xmlDoc returnOnlyBestScore:(BOOL)onlyBestScore{
	NSError *error = nil;
																						// if a movie does not have a name, an error probably occurred.
	NSArray *movieNodes = [xmlDoc nodesForXPath: @"/OpenSearchDescription/movies/movie[name]" error: &error];
	NSMutableArray *resultMoviesArray = [[NSMutableArray alloc] init];
	for (NSXMLNode *node in movieNodes) {		
		id queryResult = [self getMovieInfoFromXMLNode: node ];
		if ( queryResult )
			[resultMoviesArray addObject:  queryResult ];
		else {
			NSLog( @"Error occurred while processing search result. Dumping XML...\n\n\n" );
			NSData* rawDoc = [ xmlDoc XMLData ];
			NSString* xmlString = [ [ NSString alloc ] initWithData: rawDoc encoding: NSUTF8StringEncoding ];
			NSLog( @"--------------------------------------------\n\n" );
			NSLog( @"%@\n\n", xmlString );
			NSLog( @"--------------------------------------------\n\n" );
			break;
		}
		if ( onlyBestScore )
			break;
	}
	
	return resultMoviesArray;
}

-(NSArray*)doSearchCommonForArray: (NSString*)requestString returnOnlyBestScore:(BOOL)onlyBestScore {
	NSXMLDocument* xmlDoc = [ self doSearchCommonXML: requestString returnOnlyBestScore: onlyBestScore ];	
	NSArray* results = [ self createMoviesFromXMLDocument: xmlDoc returnOnlyBestScore: onlyBestScore ];
	if ( !results || [ results count ] == 0 )
		NSLog( @"No results returned for query %@", requestString );
	return results;
}

-(NSArray*)searchByTitle: (NSString*)title returnOnlyBestScore:(BOOL)onlyBestScore
{
	NSString *cleanedUpTitle = [title stringByReplacingOccurrencesOfString: @" " withString: @"+"];
	NSString *requestString = [NSString stringWithFormat: @"http://api.themoviedb.org/2.1/Movie.search/%@/xml/%@/%@", self.languageIdentifier, TMDbAPIKey, cleanedUpTitle];
	return [ self doSearchCommonForArray: requestString returnOnlyBestScore: onlyBestScore ];
}

-(NSArray*)searchIMDBByID:(NSString*)imdbID {
	NSString *requestString = [NSString stringWithFormat: @"http://api.themoviedb.org/2.1/Movie.imdbLookup?imdb_id=%@api_key=%@", imdbID, TMDbAPIKey];
	return [ self doSearchCommonForArray: requestString returnOnlyBestScore: NO ];
}

-(NSArray*)searchByID:(NSNumber*)tmdbID {
	NSString *requestString = [NSString stringWithFormat: @"http://api.themoviedb.org/2.1/Movie.getInfo/%@/xml/%@/%@", self.languageIdentifier, TMDbAPIKey, tmdbID];
	return [ self doSearchCommonForArray: requestString returnOnlyBestScore: NO ];
}

@end
