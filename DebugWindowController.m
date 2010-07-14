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

// Since we get some ugly problems when the reset button is pushed and we 
// are loging an image in the background, i just disable this crap for now.
//#define ENABLE_ASYNC_IMAGE_LOADING

#import "DebugWindowController.h"
#import "BrainslugController.h"

@interface DebugWindowController ()
- (void) loadCoverArt: (NSString*) url;
- (void) showCoverArtInDictionary: (NSDictionary*) coverArtDict;
- (void) showCoverArtAndLoadIfNeeded: (NSString*) url;
- (void) loadCoverArt: (NSString*) url;
@end

@implementation DebugWindowController

- (void)awakeFromNib
{
	_managedObjectContext = [[[NSApplication sharedApplication] delegate] managedObjectContext];

	_coverImageCache = [[NSMutableDictionary alloc] init];
	
	[_movieArrayController addObserver: self
							forKeyPath: @"selection"
							   options: NSKeyValueObservingOptionNew
							   context: NULL
	 ];
	
	[_movieArrayController addObserver: self
							forKeyPath: @"arrangedObjects"
							   options: NSKeyValueObservingOptionNew
							   context: NULL
	 ];
	
	[_mainController updateMenuView];
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
	if ([keyPath isEqual: @"selection"])
	{
		if ([[change objectForKey: NSKeyValueChangeKindKey] intValue] == NSKeyValueChangeSetting) {
			NSString *coverArtPath = [_movieArrayController valueForKeyPath: @"selection.coverArtPath"];
			if (coverArtPath) {
				[self showCoverArtAndLoadIfNeeded: coverArtPath];
			}
		}
	}
	else if ([keyPath isEqual: @"arrangedObjects"])
	{
		[_mainController updateMenuView];
	}
}

// MARK: -

- (void) showCoverArtInDictionary: (NSDictionary*) coverArtDict
{
	[_coverArtProcessIndicator stopAnimation: self];
	[_coverImageCache setObject: [coverArtDict objectForKey: @"image"] forKey: [coverArtDict objectForKey: @"url"]];
	NSString *coverArtPath = [_movieArrayController valueForKeyPath: @"selection.coverArtPath"];
	if ([coverArtPath isEqual: [coverArtDict objectForKey: @"url"]]) {
		[_coverArtImageView setImage: [coverArtDict objectForKey: @"image"]];
		[_coverArtImageView setHidden: NO];
	}
}

- (void) showCoverArtAndLoadIfNeeded: (NSString*) url {
	[_coverArtImageView setHidden: YES];
	NSImage *coverImage = [_coverImageCache objectForKey: url];
	if (coverImage) {
		NSDictionary *result = [NSDictionary dictionaryWithObjectsAndKeys: coverImage, @"image", url, @"url", nil];
		[self showCoverArtInDictionary: result];
	} else {
		[_coverArtProcessIndicator startAnimation: self];
		
#ifdef ENABLE_ASYNC_IMAGE_LOADING
		[self performSelectorInBackground: @selector(loadCoverArt:) withObject: url];
#else
		[self loadCoverArt: url];
#endif
	}
}

- (void) loadCoverArt: (NSString*) url {
	NSImage *coverImage = [[NSImage alloc] initWithContentsOfURL: [NSURL URLWithString: url]];
	NSDictionary *result = [NSDictionary dictionaryWithObjectsAndKeys: coverImage, @"image", url, @"url", nil];
	[self performSelectorOnMainThread: @selector(showCoverArtInDictionary:) withObject: result waitUntilDone: NO];
}

// MARK: -

- (IBAction) rescanAllSources:(id)sender
{
	[_mainController removeDeadEntries];
	
	NSLog(@"Start scanning of all sources.");
		
	NSEntityDescription *entityDescription = [NSEntityDescription  entityForName: @"MediaSource"
														  inManagedObjectContext: _managedObjectContext];
	
	NSFetchRequest *request = [[[NSFetchRequest alloc] init] autorelease];
	[request setEntity:entityDescription];
	
	NSArray *sourceArray = [_managedObjectContext executeFetchRequest: request error: nil];
	for (NSManagedObject *source in sourceArray) {
		[_mainController performSelectorInBackground: @selector(scanSource:) withObject: source];
	}
}

- (void) removeAllMovies
{
	NSEntityDescription *entityDescription = [NSEntityDescription
											  entityForName: @"Movie" inManagedObjectContext: _managedObjectContext];
	NSFetchRequest *request = [[[NSFetchRequest alloc] init] autorelease];
	[request setEntity: entityDescription];
	
	NSError *error = nil;
	NSArray *array = [_managedObjectContext executeFetchRequest:request error: &error];
	for (NSManagedObject *movie in array) {
		[_managedObjectContext deleteObject: movie];
	}
}

- (void) removeAllTVShows
{
	NSEntityDescription *entityDescription = [NSEntityDescription
											  entityForName: @"TVShow" inManagedObjectContext: _managedObjectContext];
	NSFetchRequest *request = [[[NSFetchRequest alloc] init] autorelease];
	[request setEntity: entityDescription];
	
	NSError *error = nil;
	NSArray *array = [_managedObjectContext executeFetchRequest:request error: &error];
	for (NSManagedObject *movie in array) {
		[_managedObjectContext deleteObject: movie];
	}	
}

- (IBAction) resetAllSources:(id)sender
{
	NSLog(@"Resetting all sources.");
	[self removeAllTVShows];
	[self removeAllMovies];
}

@end
