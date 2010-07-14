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

@protocol Access
-(NSArray*)searchByTitle:(NSString*)title returnOnlyBestScore:(BOOL)onlyBestScore;
@end

@interface Access : NSObject<Access> {
	NSString *languageIdentifier; // the user-specified language used to look up media information. default is "en" (english)
}

@property (retain) NSString* languageIdentifier;

// returns nil
-(NSArray*)searchByTitle:(NSString*)title returnOnlyBestScore:(BOOL)onlyBestScore;
-(NSXMLDocument*)doSearchCommonXML: (NSString*)requestString returnOnlyBestScore:(BOOL)onlyBestScore;
@end