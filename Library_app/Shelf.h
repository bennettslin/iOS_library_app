//
//  Shelf.h
//  Library_app
//
//  Created by Bennett Lin on 10/3/13.
//  Copyright (c) 2013 Bennett Lin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Book.h"
@class Book;

@interface Shelf : NSObject
@property NSString *genre;
@property NSMutableArray *all_books;

- (void) createBook: (NSString *) title;
- (void) seedBooks;
- (void) removeBook: (Book *) book;
- (void) addBook: (Book *) book;

@end
