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

#import <Cocoa/Cocoa.h>

@class BrainslugController;
@class Access;

@protocol ImportController
- (id) initWithMainController: (BrainslugController*) ctrler;
- (void) scanSource: (NSManagedObject*)source;
- (void) scanFile:(NSString*)fileString fromSource:(NSManagedObject*)source;
// responsible for adding the paths, name, source, and releaseDate to the media entry
// should be safe to call multiple times (i.e. no new objects unnecessarily reallocated, some or all arguments may be nil without causing problems -- except mediaEntry)
- (void) addData: (NSString*)name toEntry:(NSManagedObject*)mediaEntry filePaths:(NSArray*)paths source:(NSManagedObject*)source infos:(NSDictionary*)infos;
@end

@interface ImportController : NSObject<ImportController> {
	BrainslugController *_mainController;
	Access *_access;
	NSSet *videoFileTypes;
	NSManagedObjectContext *_managedObjectContext;
}

@property (retain) NSSet* videoFileTypes;

- (id) initWithMainController: (BrainslugController*) ctrler;
- (id) initWithMainController: (BrainslugController*) ctrler andAccess:(Access*)access;
// warning: does nothing in the base class!
- (void) scanSource: (NSManagedObject*)source;
// returns any filepaths which were implicitly added in addition to fileString
- (NSArray*) scanFile:(NSString*)fileString fromSource:(NSManagedObject*)source;
- (void) addData: (NSString*)name toEntry:(NSManagedObject*)mediaEntry filePaths:(NSArray*)paths source:(NSManagedObject*)source infos:(NSDictionary*)infos;

// Helper
- (NSManagedObject*) firstEntityOfType: (NSString*) entityType thatMatchesPredicate: (NSPredicate*) predicate didAlreadyExist: (BOOL*)didExist;

@end