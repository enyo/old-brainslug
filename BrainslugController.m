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

#import "BrainslugController.h"
#import "MenuView.h"
#import "ImportController_Movies.h"
#import "ImportController_TVShows.h"

@interface NSManagedObject ()
- (NSString*) name;
- (NSString*) path;
- (NSString*) coverArtPath;
- (NSManagedObject*) mediaEntry;
- (NSSet*) mediaFiles;
@end

@interface BrainslugController ()
- (void) updateMenuView;
- (void) removeDeadEntries;
@end

@implementation BrainslugController

@synthesize logText = _logText;

- (void)awakeFromNib
{
	_importMoviesController = [[ImportController_Movies alloc] initWithMainController: self];
	_importTVShowsController = [[ImportController_TVShows alloc] initWithMainController: self ];
	self.logText = @"";
	
	NSURL *htmlURL = [[NSBundle mainBundle] URLForResource: @"start" withExtension: @"html"];
	
	[[_webKitView mainFrame] loadRequest: [NSURLRequest requestWithURL: htmlURL]];
}

- (void) updateMenuView
{
	NSManagedObjectContext *managedObjectContext = [[[NSApplication sharedApplication] delegate] managedObjectContext];
	
	NSEntityDescription *entityDescription = [NSEntityDescription
											  entityForName:@"Movie" inManagedObjectContext: managedObjectContext];
	NSFetchRequest *request = [[[NSFetchRequest alloc] init] autorelease];
	[request setEntity: entityDescription];
	
	NSError *error = nil;
	NSArray *array = [managedObjectContext executeFetchRequest:request error: &error];
	
	[_menuView reinitializeMenuWithEntries: array];
}

- (void) informAboutProgress: (NSString*) infos
{
	@synchronized (self) {
		[self willChangeValueForKey: @"logText"];
		self.logText = [NSString stringWithFormat: @"%@\n%@",self.logText, infos];
		[self didChangeValueForKey: @"logText"];		
	}
}

- (void) removeDeadEntries
{
	NSLog(@"Starting to remove all dead entries");

	NSManagedObjectContext *managedObjectContext = [[[NSApplication sharedApplication] delegate] managedObjectContext];
	
	NSEntityDescription *entityDescription = [NSEntityDescription
											  entityForName:@"MediaFile" inManagedObjectContext: managedObjectContext];
	NSFetchRequest *request = [[[NSFetchRequest alloc] init] autorelease];
	[request setEntity: entityDescription];
	
	NSError *error = nil;
	NSArray *array = [managedObjectContext executeFetchRequest:request error: &error];
	
	NSMutableSet *removedFiles = [NSMutableSet set];
	NSMutableSet *removedMovies = [NSMutableSet set];
	
	for (NSManagedObject *mediafile in array) {
		if (![[NSFileManager defaultManager] fileExistsAtPath: mediafile.path]) {
			NSManagedObject *mediaEntry = mediafile.mediaEntry;
			for (NSManagedObject *mediaPart in mediaEntry.mediaFiles) {				
				if (![removedFiles containsObject: mediaPart.path]) {
					[self informAboutProgress: [NSString stringWithFormat: @"- Removing file: %@", mediaPart.path]];
					[removedFiles addObject: mediaPart.path];
					[managedObjectContext deleteObject: mediaPart];					
				}
			}
			
			if (![removedMovies containsObject: mediaEntry.name]) {
				[self informAboutProgress: [NSString stringWithFormat: @"- Removing entry: %@", mediaEntry.name]];
				[removedMovies addObject: mediaEntry.name];
				[managedObjectContext deleteObject: mediaEntry];
			}
		}
	}
}

- (void) scanSource: (NSManagedObject*)source
{
	[self informAboutProgress: [NSString stringWithFormat: @"Starting to scan source: %@", source.name]];
	if ( [ [ source valueForKey: @"movieSource" ] boolValue ] )
		[_importMoviesController scanSource: source];
	if ( [ [ source valueForKey: @"tvSource" ] boolValue ] )
		[_importTVShowsController scanSource: source];
}

@end
