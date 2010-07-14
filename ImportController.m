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

#import "ImportController.h"
#import <QTKit/QTKit.h>

@interface NSManagedObject ()
- (NSString*) name;
- (NSString*) path;
@end

@implementation ImportController

@synthesize videoFileTypes;

-(id)init {
	if ( self = [super init] ) {
		_managedObjectContext = [[[NSApplication sharedApplication] delegate] managedObjectContext];
//		videoFileTypes = [ NSSet setWithArray: [ QTMovie movieFileTypes: QTIncludeCommonTypes ] ];
//		for ( id ft in videoFileTypes ) {
//			NSLog( @"File type: %@", ft );
//		}
		videoFileTypes = [NSSet setWithObjects: @"avi", @"mkv", @"mp4", @"m4v", nil];
	}
	return self;
}

- (id) initWithMainController: (BrainslugController*) ctrler {
	if (self = [self init])
	{
		_mainController = ctrler;
	}
	return self;
}

- (id) initWithMainController: (BrainslugController*) ctrler andAccess:(Access*)access {
	if (self = [self init])
	{
		_mainController = ctrler;
		_access = access;
	}
	return self;
}

- (void) scanSource: (NSManagedObject*)source {
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	
	NSLog(@"Source: %@ Path: %@", [source name], [source path]);
	
	// fix the path if necessary
	NSString* sourcePath = [ source path ];
	if ( [ sourcePath characterAtIndex: [ sourcePath length ] - 1 ] != '/' )
		[ source setValue: [ sourcePath stringByAppendingString: @"/" ] forKey: @"path" ];
	
	NSSet* filesAlreadyAdded = [ NSSet set ];
	NSArray *sourceFileList = [[NSFileManager defaultManager] subpathsOfDirectoryAtPath: [source path] error: nil];
	for (NSString *fileString in sourceFileList) {
		if ([videoFileTypes containsObject: [fileString pathExtension]]) {
			if ( ![ filesAlreadyAdded containsObject: [NSString stringWithFormat: @"%@%@", [source path], fileString] ] ) {
				NSArray* implicitlyAddedFiles = [ self scanFile: fileString fromSource: source ];
				filesAlreadyAdded = [ filesAlreadyAdded setByAddingObjectsFromArray: implicitlyAddedFiles ];
			}
		}
	}
	
	[_mainController performSelectorOnMainThread: @selector(updateMenuView)
									  withObject: nil
								   waitUntilDone: YES];
	
	[pool release];
}

- (NSArray*) scanFile:(NSString*)fileString fromSource:(NSManagedObject*)source {
	return nil;
}

- (NSManagedObject*) firstEntityOfType: (NSString*) entityType thatMatchesPredicate: (NSPredicate*) predicate didAlreadyExist: (BOOL*)didExist
{
	NSParameterAssert(entityType);
	NSParameterAssert(predicate);
	NSParameterAssert(didExist);
	
	NSEntityDescription *entityDescription = [NSEntityDescription entityForName: entityType
														 inManagedObjectContext: _managedObjectContext];
	NSFetchRequest *request = [[NSFetchRequest alloc] init];
	[request setEntity: entityDescription];
	[request setPredicate: predicate];
	
	NSError *error = nil;
	NSArray *array = [_managedObjectContext executeFetchRequest:request error: &error];
	NSAssert( error == nil, @"Fetch request failed." );
	NSManagedObject *entity = nil;
	BOOL doesAlreadyExist = *didExist = [array count] != 0;
	
	if (doesAlreadyExist) {
		entity = [array objectAtIndex: 0];
		NSAssert([array count] == 1, @"Duplicate entries in DB");
	} else {
		entity = [NSEntityDescription insertNewObjectForEntityForName: entityType
											   inManagedObjectContext: _managedObjectContext];
	}
	
	return entity;	
}

- (void) addData: (NSString*)name toEntry:(NSManagedObject*)mediaEntry filePaths:(NSArray*)paths source:(NSManagedObject*)source infos:(NSDictionary*)infos {
	NSParameterAssert( mediaEntry );
	if (name)
		[mediaEntry setValue: name forKey: @"name"];

	if (paths) {
		NSMutableSet *mediaFiles = [mediaEntry mutableSetValueForKey: @"mediaFiles"];
		for (NSString *path in paths) {
			NSManagedObject *newMediaFile = [NSEntityDescription insertNewObjectForEntityForName: @"MediaFile"
																		  inManagedObjectContext: _managedObjectContext];
			
			[newMediaFile setValue: path forKey: @"path"];
			[mediaFiles addObject: newMediaFile];
		}
	}
	
	if (source)
		[mediaEntry setValue: source forKey: @"source"];
	
	if (infos) {
		NSDate* releaseDate = [infos objectForKey: @"releaseDate"];
		if (releaseDate) {
			[mediaEntry setValue: releaseDate forKey: @"releaseDate"];
		}
	}
}

@end
