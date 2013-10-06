//
//  main.m
//  Library_app
//
//  Created by Bennett Lin on 10/2/13.
//  Copyright (c) 2013 Bennett Lin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Library.h"

int main(int argc, const char * argv[])
{
  @autoreleasepool {
    Library *my_library = [[Library alloc] init];
    [my_library initialize];
    [my_library seedShelves];
    [my_library reportShelves];
    [my_library reShelfBook: @"Beowulf" ontoShelf: @"romance"];
    [my_library reportShelves];
  }
  return 0;
}