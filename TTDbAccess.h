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

@interface TTDbSearchResult : NSObject {
	NSNumber	*seriesID;
	NSDate		*firstAiredDate;
	NSString	*bannerURLSubPath,
				*overview,
				*imdbID,
				*title;
	
}

@property (retain) NSNumber *seriesID;
@property (retain) NSDate *firstAiredDate;
@property (retain) NSString	*bannerURLSubPath,
				*overview,
				*imdbID,
				*title;
				
@end

@interface TTDbAccess : Access {
}

// returns an array of TTDbSearchResults
-(NSArray*)searchByTitle:(NSString*)title returnOnlyBestScore:(BOOL)onlyBestScore;
-(void)getAllEpisodeInformationForShowID:(NSNumber*)ttdbID;
@end
