//
//  main.m
//  anagram
//
//  Created by Chris Sprague on 3/14/15.
//  Copyright (c) 2015 exercism. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Anagram.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Anagram *anagram = [[Anagram alloc] initWithString:@"diaper"];
        NSArray *results = [anagram match:@[@"hello",@"world",@"zombies",@"pants"]];
    }
    return 0;
}
