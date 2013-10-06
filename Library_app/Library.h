//
//  Library.h
//  Library_app
//
//  Created by Bennett Lin on 10/2/13.
//  Copyright (c) 2013 Bennett Lin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Shelf.h"

@interface Library : NSObject
@property NSMutableArray *all_shelves;

- (void) initialize;
- (void) createShelf: (NSString *) genre;
- (void) seedShelves;
- (void) reportShelves;
- (BOOL) reShelfBook: (NSString *) title ontoShelf: (NSString *) genre;
- (Book *) searchForBook: (NSString *) title;
- (Shelf *) searchForShelf: (NSString *) genre;

@end