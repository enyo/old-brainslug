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

#import "ImportController_Movies.h"
#import "RegexKitLite.h"
#import "TMDbAccess.h"

@interface NSObject ()
- (void) informAboutProgress: (NSString*) str;
@end

@interface NSManagedObject ()
- (NSString*) name;
- (NSString*) path;
- (NSString*) coverArtPath;
- (NSManagedObject*) mediaEntry;
- (NSSet*) mediaFiles;
@end

@interface Access(TMDb)
-(NSArray*)searchIMDBByID:(NSString*)imdbID;
@end

@interface ImportController_Movies ()
- (void) foundMovie: (NSString*)movieName withFilePaths: (NSArray*) paths fromSource: (NSManagedObject*) source withInfos: (NSDictionary*)infos;
- (void) foundMovie: (NSDictionary*)movieInfo;
@end

@implementation ImportController_Movies

- (id) initWithMainController: (BrainslugController*) ctrler
{
	if (self = [super initWithMainController: ctrler andAccess: [[TMDbAccess alloc] init]] )
	{
//		[_tmdbAccess searchByID: [NSNumber numberWithInt: 550]];
//		[_access searchIMDBByID: @"tt0068646" ];
//		NSArray *c = [_tmdbAccess searchByTitle: @"Fight Club"];
//		NSLog(@"%@", c);
	}
	
	return self;
}

// returns the movie name minus the release year (or the original name if no year could be detected).
// the year is then inserted into the given dictionary
- (NSString*)locateAndRemoveReleaseYear:(NSString*)movieName withInfo:(NSMutableDictionary*)infos
{
	NSRange yearRangeWithParentheses = [movieName rangeOfRegex: @"(\\(|\\[)[0-9]{4}(\\)|\\])\\Z"];
	if (yearRangeWithParentheses.location != NSNotFound) {
		NSRange yearRange = { yearRangeWithParentheses.location + 1, yearRangeWithParentheses.length -2 };
		
		[infos setValue: [NSNumber numberWithInt: [[movieName substringWithRange: yearRange] intValue]]
				 forKey: @"releaseYear"];
		
		NSRange actualNameRange = {0, yearRangeWithParentheses.location};
		movieName = [movieName substringWithRange: actualNameRange];
	}
	
	return movieName;
}

- (BOOL)checkForPartsWithFile:(NSString *)fileString fromSource:(NSManagedObject *)source andAddTo:(NSMutableArray *)filePaths {
	// scan for a pattern like xofy, where y is the total number of parts and x is the current one
	// should also optionally match p or part at beginning later on
	const NSString* whitespacePattern = @"(\\s|\\.|\\_|-)*";
	// supported patterns:
	// 1of2
	// p1
	// pt1
	// part1
	// p1of2
	// pt1of2
	// part1of2
	
	NSRange multiPartSpecifier = [fileString rangeOfRegex: [ NSString stringWithFormat: @"((p|pt|part)?%@1%@of%@\\d+)", whitespacePattern, whitespacePattern, whitespacePattern ]];
	if ( multiPartSpecifier.location == NSNotFound ) {
		// have to split this up into two checks, because if we make the "of xxx" optional for ALL matches then we'll capture too much, for example the year, since we can't distinguish the 1 as the first part of a sequence anymore
		multiPartSpecifier = [fileString rangeOfRegex: [ NSString stringWithFormat: @"((p|pt|part)%@1)", whitespacePattern ]];
	}
	if ( multiPartSpecifier.location != NSNotFound ) {
		NSString* matchingPart1ToEnd = [ fileString substringWithRange: multiPartSpecifier ];
		// find the 1 of xxx piece and store the range of the 1 so we can update it when we iterate later
		const NSRange currentPartSpecifier = [ matchingPart1ToEnd rangeOfString: @"1" ];
		const NSRange currentPartSpecifierInOriginalString = { multiPartSpecifier.location + currentPartSpecifier.location, currentPartSpecifier.length };
		NSAssert( currentPartSpecifier.location != NSNotFound, @"This is a pretty bad bug. We can no longer find the 1 in the string we just proved matched 1of<something>");
		NSString* matchingSubstringToEnd = [ matchingPart1ToEnd substringFromIndex: currentPartSpecifier.location + currentPartSpecifier.length ];
		NSUInteger totalParts = (NSUInteger)-1;
		if ( matchingSubstringToEnd && [ matchingSubstringToEnd length ] ) {
			const NSRange totalPartsRange = [ matchingSubstringToEnd rangeOfRegex: @"\\d+" ];		
			if ( totalPartsRange.location != NSNotFound ) {
				totalParts = [ [ matchingSubstringToEnd substringWithRange: totalPartsRange ] intValue ];
			}
		}
		for ( NSUInteger i=2; i <= totalParts; ++i ) {
			NSString *nextPartPattern = [ NSString stringWithFormat: @"%d", i ];
			NSString *nextPart = [NSString stringWithFormat: @"%@%@", [source path], [ fileString stringByReplacingCharactersInRange: currentPartSpecifierInOriginalString withString: nextPartPattern ]];
			NSLog( @"checking subpart %@", nextPart );
			if ([[NSFileManager defaultManager] fileExistsAtPath: nextPart]) {
				[filePaths addObject: nextPart];
			} else
				break;
		}
		return YES;
	}
	return NO;
}

- (BOOL)checkForCDsWithFile:(NSString *)fileString fromSource:(NSManagedObject *)source andAddTo:(NSMutableArray *)filePaths {
	const NSRange rangeOfCD = [fileString rangeOfString: @".cd1" options: NSBackwardsSearch];
	if ( rangeOfCD.location != NSNotFound) {
		NSUInteger n = 2;
		while ( YES ) {
			NSString *nextPartPattern = [ NSString stringWithFormat: @".cd%d", n ];
			NSString *nextPart = [NSString stringWithFormat: @"%@%@", [source path], [ fileString stringByReplacingCharactersInRange: rangeOfCD withString: nextPartPattern ]];
			if ([[NSFileManager defaultManager] fileExistsAtPath: nextPart]) {
				[filePaths addObject: nextPart];
			} else
				break;
			++n;
		}
		return YES;
	}
	return NO;
}

- (void)checkForMoreFilesRelatedTo:(NSString *)fileString fromSource:(NSManagedObject *)source andAddTo:(NSMutableArray *)filePaths {
	[ self checkForCDsWithFile: fileString fromSource: source andAddTo: filePaths ];
	[ self checkForPartsWithFile: fileString fromSource: source andAddTo: filePaths ];
}

// [mike] 95% of this code could actually be moved into the superclass and reused for tv shows
-(NSArray*)scanFile:(NSString*)fileString fromSource:(NSManagedObject*)source {
	NSArray *comp = [fileString pathComponents];
	NSString *mediumName = [ comp count ] == 1 ? fileString : [comp objectAtIndex: [comp count] - 2];			
	NSMutableDictionary *infos = [NSMutableDictionary dictionary];
	
	mediumName = [ self locateAndRemoveReleaseYear: mediumName withInfo: infos ];
	
	NSMutableArray *filePaths = [NSMutableArray array];
	[filePaths addObject: [NSString stringWithFormat: @"%@%@", [source path], fileString]];
	
	[self checkForMoreFilesRelatedTo: fileString fromSource: source andAddTo: filePaths ];

	
	NSString *coverImage = [NSString stringWithFormat: @"%@%@", [source path], [fileString stringByReplacingOccurrencesOfString: [fileString pathExtension]
																													 withString: @"tbn"]];
	if ([[NSFileManager defaultManager] fileExistsAtPath: coverImage]) {
		[infos setObject: [[NSString stringWithFormat: @"file://%@", coverImage] stringByAddingPercentEscapesUsingEncoding: NSUTF8StringEncoding] forKey: @"coverArtPath"];
	} else
		coverImage = nil;
	
	NSNumber* releaseYear = [ infos valueForKey: @"releaseYear" ];
	NSArray *movieInfos = [_access searchByTitle: mediumName returnOnlyBestScore: releaseYear == nil ];
	if ([movieInfos count]) {
		TMDbSearchResult* additionalInfos = nil;
		if ( releaseYear ) {
			NSString* temp = [ NSString stringWithFormat : @"%@-01-01 00:00:00 +0000", releaseYear ];
			NSDate *releaseDate = [ NSDate dateWithString: temp ];
			for ( TMDbSearchResult* info in movieInfos ) {
				const NSTimeInterval intervalBetweenDates = [ info.releaseDate timeIntervalSinceDate: releaseDate ];
				
				const NSTimeInterval secondsInOneYear = 31536000.0f;
				if ( intervalBetweenDates >= 0.f && intervalBetweenDates <= secondsInOneYear ) {
					additionalInfos = info;
					break;
				}
			}
		}
		else
			additionalInfos = [movieInfos objectAtIndex: 0];
		if ( !additionalInfos ) {
			NSLog( @"Could not find a movie matching the given release year." );
			return nil;
		}
		NSLog(@"Found infos for movie %@", additionalInfos.title);
		[infos setObject: additionalInfos.releaseDate forKey: @"releaseDate"];
		[infos setObject: additionalInfos.overview forKey: @"overview"];
		// imdb ids do not come with title searches. only when calling getInfo with the specific tmdb id
		//[infos setObject: additionalInfos.imdbID forKey: @"imdb_id"];
		[infos setObject: additionalInfos.tmdbID forKey: @"tmdb_id"];
		if ( !coverImage ) {
			if ( [ additionalInfos.posters count ] ) {
				TMDbImage* firstPoster = [ additionalInfos.posters objectAtIndex: 0 ];
				[infos setObject: firstPoster.url forKey: @"coverArtPath"];
			}
		}
	}
	
	[self performSelectorOnMainThread: @selector(foundMovie:)
						   withObject: [NSDictionary dictionaryWithObjectsAndKeys: mediumName, @"name", filePaths, @"filePaths", source, @"source", infos, @"infos", nil]	
						waitUntilDone: YES];
	return filePaths;
}

- (void) foundMovie: (NSDictionary*)movieInfo
{
	[self foundMovie: [movieInfo objectForKey: @"name"]
	   withFilePaths: [movieInfo objectForKey: @"filePaths"]
		  fromSource: [movieInfo objectForKey: @"source"]
		   withInfos: [movieInfo objectForKey: @"infos"]];
}

- (void) foundMovie: (NSString*)movieName withFilePaths: (NSArray*) paths fromSource: (NSManagedObject*) source withInfos: (NSDictionary*)infos
{
	NSNumber* releaseYear = [infos objectForKey: @"releaseYear"];
	NSPredicate *predicate;
	if ( releaseYear )
		predicate = [NSPredicate predicateWithFormat: @"%K LIKE %@ AND %K = %@", @"name", movieName, @"releaseYear", releaseYear ];
	else
		predicate = [NSPredicate predicateWithFormat: @"'%K' LIKE %@", @"name", movieName ];
	BOOL doesAlreadyExist;
	NSManagedObject *movie = [self firstEntityOfType: @"Movie"
								thatMatchesPredicate: predicate
									 didAlreadyExist: &doesAlreadyExist];
	
	if (!doesAlreadyExist) {
		// Set the name
		[ self addData: movieName toEntry: movie filePaths: paths source: source infos: infos ];
		
		[_mainController informAboutProgress: [NSString stringWithFormat: @"Movie added to DB: %@  (%@) - %d files", movieName, [infos objectForKey: @"releaseYear"], [paths count]]];
	}
	
	if (infos) {
		if ([infos objectForKey: @"releaseYear"]) {
			[movie setValue: [infos objectForKey: @"releaseYear"] forKey: @"releaseYear"];
		}
		
		// Set the cover art if it exists
		if ([infos objectForKey: @"coverArtPath"]) {
			[movie setValue: [infos objectForKey: @"coverArtPath"] forKey: @"coverArtPath"];
		}
		
		if ([infos objectForKey: @"overview"]) {
			[movie setValue: [infos objectForKey: @"overview"] forKey: @"overview"];
		}
		
		if ([infos objectForKey: @"imdb_id"]) {
			[movie setValue: [infos objectForKey: @"imdb_id"] forKey: @"imdb_id"];
		}
		
		if ([infos objectForKey: @"tmdb_id"]) {
			[movie setValue: [infos objectForKey: @"tmdb_id"] forKey: @"tmdb_id"];
		}
	} 
}

@end
