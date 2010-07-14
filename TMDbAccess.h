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

#import "Access.h"

@interface TMDbIdentifier : NSObject {
	NSString	*name,
				*url;
}

@property (retain) NSString* name;
@property (retain) NSString* url;

@end

@interface TMDbCountry : TMDbIdentifier {
	NSString	*code;
}

@property (retain) NSString* code;

@end

@interface TMDbImage : TMDbIdentifier {
	NSNumber	*imageID;
	NSString	*size;
}

@property (retain) NSNumber* imageID;
@property (retain) NSString* size;

@end

@interface TMDbSearchResult : NSObject {
	NSNumber	*searchScore,
				*popularity,
				*rating,
				*tmdbID,
				*runtime,
				*budget,
				*revenue;
				
	NSString	*title,
				*type,					// is this ever not movie?
				*tmdbURL,
				*imdbID,
				*overview,
				*homepageURL,
				*trailerURL;
				
	NSDate		*releaseDate;
	
	NSArray		*productionCountries,	// an array of TMDbCountries
				*posters,				// an array of TMDbImages
				*backdrops,				// an array of TMDbImages
				*categories;			// an array of TMDbIdentifiers
				
	NSDictionary*peopleInvolved;		// key = job. value = TMDbIdentifier array

}

@property (retain) NSNumber* searchScore;
@property (retain) NSNumber* popularity;
@property (retain) NSNumber* rating;
@property (retain) NSNumber* runtime;
@property (retain) NSNumber* tmdbID;
@property (retain) NSNumber* budget;
@property (retain) NSNumber* revenue;
				
@property (retain) NSString* title;
@property (retain) NSString* tmdbURL;
@property (retain) NSString* imdbID;
@property (retain) NSString* type;
@property (retain) NSString* overview;
@property (retain) NSString* homepageURL;
@property (retain) NSString* trailerURL;
				
@property (retain) NSDate* releaseDate;
	
@property (retain) NSArray* productionCountries;
@property (retain) NSArray* categories;
@property (retain) NSArray* posters;
@property (retain) NSArray* backdrops;	

@property (retain) NSDictionary* peopleInvolved;

@end

@interface TMDbAccess : Access {
}

// methods return an array of TMDbSearchResults. if the flag onlyBestScore is true, only the highest scoring result will be returned instead of all
-(NSArray*)searchByTitle:(NSString*)title returnOnlyBestScore:(BOOL)onlyBestScore;
-(NSArray*)searchIMDBByID:(NSString*)imdbID;
-(NSArray*)searchByID:(NSNumber*)tmdbID;

@end
