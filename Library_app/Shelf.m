//
//  Shelf.m
//  Library_app
//
//  Created by Bennett Lin on 10/3/13.
//  Copyright (c) 2013 Bennett Lin. All rights reserved.
//

#import "Shelf.h"

@implementation Shelf

- (void) createBook: (NSString *) title {
  Book *new_book = [[Book alloc] init];
  new_book.title = title;
  new_book.onThisShelf = self;
//  NSLog(@"What is this: %@", new_book.onThisShelf);
  [self.all_books addObject:new_book];
}

// overrides description with genre
//- (NSString *) description {
//  return self.genre;
//}

- (void) seedBooks {
  NSMutableArray *seed_books = [NSMutableArray arrayWithCapacity: 2];
  
  if ([self.genre isEqual: @"romance"])
    seed_books = [NSArray arrayWithObjects: @"Pride and Prejudice", @"Wuthering Heights", nil];
  
  else if ([self.genre isEqual: @"fantasy"])
    seed_books = [NSArray arrayWithObjects:
      @"Beowulf", @"Lord of the Rings", nil];

  else if ([self.genre isEqual: @"nonfiction"])
    seed_books = [NSArray arrayWithObjects:
                  @"Computer Music", @"Social Psychology", nil];
  
  for (id book in seed_books) {
    [self createBook: book];
  }
}

- (void) removeBook: (Book *) book {
  [self.all_books removeObject: book];
}

- (void) addBook: (Book *) book {
  [self.all_books addObject: book];
}

@end
