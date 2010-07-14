//
//    Brainslug is a media center application.
//    Copyright (C) 2009 Michel Boto
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

#import "ImportController_TVShows.h"
#import "TTDbAccess.h"
#import "RegexKitLite.h"

@interface NSObject ()
- (void) informAboutProgress: (NSString*) str;
@end

@interface NSManagedObject ()
- (NSString*) name;
- (NSString*) path;
- (NSManagedObject*) mediaEntry;
- (NSSet*) mediaFiles;
@end

@implementation ImportController_TVShows

- (id) initWithMainController: (BrainslugController*) ctrler
{
	if (self = [super initWithMainController: ctrler andAccess: [[TTDbAccess alloc] init]] )
	{
		//[ _access searchByTitle: @"30 Rock" returnOnlyBestScore: YES ];
	}
	
	return self;
}

- (BOOL)determineSeasonAndEpisode:(NSString *)fileString withInfo:(NSMutableDictionary*)infos {
	// match S01E05 for example, which would be the 5th episode of season 1
	
	//const NSString* whitespacePattern = @"(\\s|\\.|\\_|-)*";
	const NSRange seasonAndEpisodeSpecifier = [fileString rangeOfRegex: @"([sS]?\\d+[eE]?\\d+)" ];
	if ( seasonAndEpisodeSpecifier.location != NSNotFound ) {
		const NSString* seasonAndEpisode = [ fileString substringWithRange: seasonAndEpisodeSpecifier ];
		const NSRange seasonSpecifier = [seasonAndEpisode rangeOfRegex: @"(\\d+)" ];
		NSNumber* season = [ NSNumber numberWithInt: [ [ seasonAndEpisode substringWithRange: seasonSpecifier ] intValue ] ];

		const NSString* episodeSubstring = [ seasonAndEpisode substringFromIndex: seasonSpecifier.location + seasonSpecifier.length ];
		const NSRange episodeSpecifier = [episodeSubstring rangeOfRegex: @"(\\d+)" ];
		NSNumber* episode;
		if ( episodeSpecifier.location != NSNotFound ) {
			episode = [ NSNumber numberWithInt: [ [ episodeSubstring substringWithRange: episodeSpecifier ] intValue ] ];
		} else {
			// see if the parent directory ends with a number. if it does, it's probably the season number, in which case we can subtract it from the season value we already have and the rest is probably the episode
			NSArray *pathComponents = [ fileString pathComponents ];
			NSString *parentDir = [ pathComponents objectAtIndex: [ pathComponents count ] - 2 ];
			if ( parentDir ) {
				const NSUInteger len = [ parentDir length ];
				const char* utf8ParentDir = [ parentDir UTF8String ];
				NSUInteger i = len - 1;
				for ( ; i >= 0; --i ) {
					if ( !isdigit( utf8ParentDir[i] ) || isspace( utf8ParentDir[i] ) )
						break;
				}
				if ( i > 0 && i < len - 1 ) {
					const NSRange rangeOfSeasonNumber = NSMakeRange( i+1, len -(i+1) );
					NSString *seasonNumberInDir = [ parentDir substringWithRange: rangeOfSeasonNumber ];
					// split the original season at this size if they match
					NSString *currentSeasonNumber = [ season stringValue ];
					NSRange rangeOfRegex = [ currentSeasonNumber rangeOfRegex: [ NSString stringWithFormat: @"(%@\\d+)", seasonNumberInDir ] ];
					if ( rangeOfRegex.location == 0 ) {
						season = [ NSNumber numberWithInt: [ seasonNumberInDir intValue ] ];
						const NSUInteger startPosOfEpisode = [ seasonNumberInDir length ];
						episode = [ NSNumber numberWithInt: [ [ currentSeasonNumber substringWithRange: NSMakeRange( startPosOfEpisode, [ currentSeasonNumber length ] - startPosOfEpisode ) ] intValue ] ];
					}
				}
			}
		}
		
		[infos setValue: season forKey: @"season"];
		[infos setValue: episode forKey: @"episode"];
		return YES;
	}
	return NO;
}

- (NSArray*) scanFile:(NSString*)fileString fromSource:(NSManagedObject*)source {
	NSArray *comp = [fileString pathComponents];
	NSString *mediumName = [ comp count ] == 1 ? fileString : [comp objectAtIndex: 0];			
	NSMutableDictionary *infos = [NSMutableDictionary dictionary];
	
	NSMutableArray *filePaths = [NSMutableArray array];
	[filePaths addObject: [NSString stringWithFormat: @"%@%@", [source path], fileString]];
	
	[self determineSeasonAndEpisode: fileString withInfo: infos ];
	
	NSString *coverImage = [NSString stringWithFormat: @"%@%@", [source path], [fileString stringByReplacingOccurrencesOfString: [fileString pathExtension]
																													 withString: @"tbn"]];
	if ([[NSFileManager defaultManager] fileExistsAtPath: coverImage]) {
		[infos setObject: coverImage forKey: @"coverArtPath"];
	} else
		coverImage = nil;
		
	NSString *showName = @"Unknown TV Show";
	
	NSArray *movieInfos = [_access searchByTitle: mediumName returnOnlyBestScore: TRUE ];
	if ([movieInfos count]) {
		TTDbSearchResult* additionalInfos = [movieInfos objectAtIndex: 0];
		NSLog(@"Found infos for TV series %@", additionalInfos.title);
		if ( additionalInfos.title )
			showName = additionalInfos.title;

		[infos setObject: additionalInfos.firstAiredDate forKey: @"releaseDate"];
		[infos setObject: additionalInfos.overview forKey: @"overview"];
		// imdb ids do not come with title searches. only when calling getInfo with the specific tmdb id
		//[infos setObject: additionalInfos.imdbID forKey: @"imdb_id"];
		[infos setObject: additionalInfos.seriesID forKey: @"ttdb_id"];
		if ( !coverImage ) {
		/*
			if ( [ additionalInfos.posters count ] ) {
				TMDbImage* firstPoster = [ additionalInfos.posters objectAtIndex: 0 ];
				[infos setObject: firstPoster.url forKey: @"coverArtPath"];
			}
			*/
		}
	}
	

	
	[self performSelectorOnMainThread: @selector(foundEpisode:)
						   withObject: [NSDictionary dictionaryWithObjectsAndKeys: showName, @"show", mediumName, @"name", filePaths, @"filePaths", source, @"source", infos, @"infos", nil]	
						waitUntilDone: YES];
	return filePaths;
}

// Returns the show object - if it doesnt exist, it creates it
- (NSManagedObject*) showWithName: (NSString*) showName withInfos: (NSDictionary*)infos
{
	NSParameterAssert(showName);
	
	NSPredicate *predicate = [NSPredicate predicateWithFormat: @"%K LIKE %@", @"name", showName];
	BOOL doesAlreadyExist;
	NSManagedObject *showObject = [self firstEntityOfType: @"TVShow"
										thatMatchesPredicate: predicate
												didAlreadyExist: &doesAlreadyExist];
	
	if (!doesAlreadyExist) {
		[_mainController informAboutProgress: [NSString stringWithFormat: @"Creating show %@", showName]];

		[showObject setValue: showName forKey: @"name"];
		// load the episode database
				// get all episode info
		[ _access getAllEpisodeInformationForShowID: [ infos valueForKey: @"ttdb_id" ] ];
	}
	
	return showObject;
}

// Returns the season object - if it doesnt exist, it creates it
- (NSManagedObject*) season: (NSNumber*) sNum ofShow: (NSString*) showName withInfos: (NSDictionary*)infos
{
	NSParameterAssert(sNum);
	NSParameterAssert(showName);
	
	if ( !sNum || !showName )
		return nil;
	
	NSPredicate *predicate = [NSPredicate predicateWithFormat: @"%K LIKE %@ AND %K = %@", @"tvShow.name", showName, @"number", sNum];
	BOOL doesAlreadyExist;
	NSManagedObject *seasonObject = [self firstEntityOfType: @"TVShowSeason"
									   thatMatchesPredicate: predicate
											didAlreadyExist: &doesAlreadyExist];

	if (!doesAlreadyExist) {
		[_mainController informAboutProgress: [NSString stringWithFormat: @"Creating season %@ for show %@", sNum, showName]];

		[seasonObject setValue: sNum forKey: @"number"];
		
		id showObject = [self showWithName: showName withInfos: infos ];
		NSAssert(showObject, @"Couldn't get season");
		[seasonObject setValue: showObject forKey: @"tvShow"];	
	}
	
	return seasonObject;
}

- (void) foundEpisode: (NSString*)mediumName ofShow: (NSString*) showName withFilePaths: (NSArray*) paths fromSource: (NSManagedObject*) source withInfos: (NSDictionary*)infos
{
	NSNumber *episodeNumber = [infos objectForKey: @"episode"];
	NSNumber *seasonNumber = [infos objectForKey: @"season"];

	NSPredicate *predicate = [NSPredicate predicateWithFormat: @"%K LIKE %@ AND %K = %@ AND %K = %@", 
							  @"season.tvShow.name", showName, 
							  @"season.number", seasonNumber,
							  @"number", episodeNumber];
	BOOL doesAlreadyExist;
	NSManagedObject *episodeObject = [self firstEntityOfType: @"TVShowEpisode"
										thatMatchesPredicate: predicate
											 didAlreadyExist: &doesAlreadyExist];
	
	if (!doesAlreadyExist) {

		// important: make sure we create the season if it doesn't exist BEFORE we try setting the episode name.
		id seasonObject = [self season: seasonNumber ofShow: showName withInfos: infos];
		NSAssert(seasonObject, @"Couldn't get season");
		[episodeObject setValue: seasonObject forKey: @"season"];
		
		[ self	  addData: [ _access nameForEpisodeNumber: episodeNumber season: seasonNumber show: showName withInfos: infos ] 
				  toEntry: episodeObject 
				filePaths: paths 
				   source: source 
				    infos: infos ];
		
		[_mainController informAboutProgress: [NSString stringWithFormat: @"TV Show Episode added to DB: S%@E%@ - %@", [infos objectForKey: @"season"], [infos objectForKey: @"episode"], mediumName]];
		
		[episodeObject setValue: episodeNumber forKey: @"number"];
	}
}

- (void) foundEpisode: (NSDictionary*)episodeInfo
{
	[self foundEpisode: [episodeInfo objectForKey: @"name"]
				ofShow: [episodeInfo objectForKey: @"show"]
		 withFilePaths: [episodeInfo objectForKey: @"filePaths"]
			fromSource: [episodeInfo objectForKey: @"source"]
			 withInfos: [episodeInfo objectForKey: @"infos"]];
}

@end