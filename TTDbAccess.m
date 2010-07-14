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

#import "TTDbAccess.h"
#import "RegexKitLite.h"

// Reference: http://thetvdb.com/wiki/index.php/Programmers_API

NSString * const TTDbAPIKey = @"DFE9573CBEC6B857";

@implementation TTDbSearchResult
@synthesize seriesID, firstAiredDate, bannerURLSubPath, overview, imdbID, title;
@end

@implementation TTDbAccess

// need this in init (or somewhere better; point is it should be done periodically but not too often)
// 	NSString *requestString = @"http://www.thetvdb.com/api/Updates.php?type=none";
//	NSXMLDocument* xmlDoc = [ super doSearchCommon: requestString returnOnlyBestScore: onlyBestScore ];	

- (NSString*)nameForEpisodeNumber: (NSNumber*)episodeNumber season: (NSNumber*)season show:(NSString*)show withInfos:(NSDictionary*)infos {
	NSString* tmpPath = [ NSString stringWithFormat: @"/tmp/Brainslug/%@SeriesInfo%@/%@.xml", TTDbAPIKey, [ infos valueForKey: @"ttdb_id" ], languageIdentifier ];
	NSData *fileData = [ NSData dataWithContentsOfFile: tmpPath ]; 
	if ( fileData ) {
		NSError *error = nil;
		NSXMLDocument *xmlDoc = [[NSXMLDocument alloc] initWithData: fileData
															options: NSXMLNodePreserveWhitespace
															  error: &error];
		if ( error ) {
			NSLog( @"Error opening XML document. %@", error );
		} else {
			return [ [ [ xmlDoc nodesForXPath: 
						[ NSString stringWithFormat: @"/Data/Episode[SeasonNumber=%@ and EpisodeNumber=%@]/EpisodeName", season, episodeNumber ]
						error: &error ] lastObject ] stringValue ];
		}
	}

	return @"Unknown";
}

-(void)getAllEpisodeInformationForShowID:(NSNumber*)ttdbID {
	// get all episodes for the show
	NSParameterAssert( ttdbID );
	if ( !ttdbID )
		return;
		
	NSString* tmpDir = [ NSString stringWithFormat: @"/tmp/Brainslug" ];
	NSFileManager* defaultManager = [ NSFileManager defaultManager ];
	[ defaultManager createDirectoryAtPath: tmpDir attributes: nil ];
	NSString* tmpPath = [ NSString stringWithFormat: @"%@/%@SeriesInfo%@", tmpDir, TTDbAPIKey, ttdbID ];
	BOOL isDirectory;
	if ( [ defaultManager fileExistsAtPath: [ tmpPath stringByAppendingFormat: @"/%@.xml", languageIdentifier ] isDirectory: &isDirectory ] )
		return;
	
	NSString *zipURL = [ NSString stringWithFormat: @"http://www.thetvdb.com/api/%@/series/%@/all/%@.zip", TTDbAPIKey, ttdbID, languageIdentifier ];
	NSData *responseData = [ NSData dataWithContentsOfURL: [ NSURL URLWithString: zipURL ] ];
	
	if ( [ responseData length ] == 0 ) {
		NSLog( @"Error retrieving zip file. 0 bytes returned from server for URL %@", zipURL );
	}
	
	NSError *error = nil;
	
	[ defaultManager createDirectoryAtPath: tmpPath attributes: nil ];
	NSString* tmpFile = [ NSString stringWithFormat: @"%@/%@.zip", tmpPath, languageIdentifier ];
	[ responseData writeToFile: tmpFile options: NSAtomicWrite error: &error ];
	if ( error ) {
		NSLog( @"Error writing zip file to temp directory. %@", [ error description ] );
		return;
	}
	NSTask* unzipTask = [ [ NSTask alloc ] init ];
	[ unzipTask setLaunchPath: @"/usr/bin/unzip" ];
	[ unzipTask setCurrentDirectoryPath: tmpPath ];
	[ unzipTask setArguments: [ NSArray arrayWithObject: tmpFile ] ];
	[ unzipTask launch ];
	[ unzipTask waitUntilExit ];
	[ defaultManager removeItemAtPath: tmpFile error: &error ]; // leave the directory there so we don't have to recreate it every time
	if ( error ) {
		NSLog( @"Error cleaning up after unzip process. %@", [ error description ] );
		return;
	}
}

-(TTDbSearchResult*)getTVShowInfoFromXMLNode:(NSXMLNode*)xmlNode {
	TTDbSearchResult* result = [ [ TTDbSearchResult alloc ] init ];
	NSError *error = nil;
	result.seriesID = [ NSNumber numberWithInt: [ [ [ [xmlNode nodesForXPath: @"seriesid" error: &error] lastObject ] stringValue ] intValue ] ];
	NSString *release = [[[xmlNode nodesForXPath: @"FirstAired" error: &error] lastObject] stringValue];

	result.firstAiredDate = [NSDate dateWithString: [NSString stringWithFormat: @"%@ 00:00:00 +0000", release]];
	if (result.firstAiredDate == nil)
		result.firstAiredDate = [NSDate date];
		
	result.overview = [[[xmlNode nodesForXPath: @"Overview" error: &error ] lastObject ] stringValue ];
	result.bannerURLSubPath = [[[ xmlNode nodesForXPath: @"Overview" error: &error ] lastObject ] stringValue ];
	result.imdbID = [[[xmlNode nodesForXPath: @"IMDB_ID" error: &error ] lastObject ] stringValue ];
	result.title = [[[xmlNode nodesForXPath: @"SeriesName" error: &error ] lastObject ] stringValue ];
	
	return result;
}

-(NSArray*)createTVShowFromXMLDocument:(NSXMLDocument*)xmlDoc returnOnlyBestScore:(BOOL)onlyBestScore{
	NSError *error = nil;
	NSArray *tvSeriesNodes = [xmlDoc nodesForXPath: @"/Data/Series" error: &error];
	NSMutableArray *resultsArray = [[NSMutableArray alloc] init];
	for (NSXMLNode *node in tvSeriesNodes) {		
		[resultsArray addObject: [self getTVShowInfoFromXMLNode: node ] ];
		if ( onlyBestScore )
			break;
	}
	
	return resultsArray;
}

-(NSArray*)doSearchCommonForArray: (NSString*)requestString returnOnlyBestScore:(BOOL)onlyBestScore {
	NSXMLDocument* xmlDoc = [ self doSearchCommonXML: requestString returnOnlyBestScore: onlyBestScore ];	
	return [ self createTVShowFromXMLDocument: xmlDoc returnOnlyBestScore: onlyBestScore ];
}

-(NSArray*)searchByTitle:(NSString*)title returnOnlyBestScore:(BOOL)onlyBestScore {
//	NSString *cleanedUpTitle = [title stringByReplacingOccurrencesOfString: @" " withString: @"+"];
	NSString *cleanedUpTitle = [ title stringByReplacingOccurrencesOfRegex: @"(\\s+|\\.)" withString: @"+" ];
	NSString *requestString = [NSString stringWithFormat: @"http://www.thetvdb.com/api/GetSeries.php?seriesname=%@", cleanedUpTitle];
	return [ self doSearchCommonForArray: requestString returnOnlyBestScore: onlyBestScore ];
}

@end
