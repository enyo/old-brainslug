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

#import "Access.h"

@implementation Access

@synthesize languageIdentifier;

-(id)init {
	if ( self = [super init] ) {
		languageIdentifier = @"en";
	}
	return self;
}

-(NSArray*)searchByTitle:(NSString*)title returnOnlyBestScore:(BOOL)onlyBestScore {
	return nil;
}

-(NSXMLDocument*)doSearchCommonXML: (NSString*)requestString returnOnlyBestScore:(BOOL)onlyBestScore {
	NSURLRequest *urlRequest = [NSURLRequest requestWithURL: [NSURL URLWithString: requestString]];
	
	NSURLResponse *response = nil;
	NSError *error = nil;
	NSData *responseData = [NSURLConnection sendSynchronousRequest: urlRequest
												 returningResponse: &response
															 error: &error];
	if ( !responseData ) {
		NSLog(@"Couldnt retrieve data from URL.");
		return nil;
	}
	
	if ( error ) {
		NSLog( @"Encountered error making URL request: %@\n", [ error description ] );
		return nil;
	}
	
	NSXMLDocument *xmlDoc = [[NSXMLDocument alloc] initWithData: responseData
														options: NSXMLNodePreserveWhitespace
														  error: &error];
	NSAssert(responseData, @"Couldnt construct xml doc from data retrieved from the URL.");
	if ( error ) {
		NSLog( @"Encountered error retrieving XML: %@\n", [ error description ] );
		NSLog( @"Dumping response data:\n\n%@\n\n", responseData  );
		return nil;
	}
	return xmlDoc;
}

@end