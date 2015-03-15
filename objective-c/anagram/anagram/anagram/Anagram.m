//
//  Anagram.m
//  anagram
//
//  Created by Chris Sprague on 3/14/15.
//  Copyright (c) 2015 exercism. All rights reserved.
//

#import "Anagram.h"

@interface Anagram()
@property NSMutableArray *wordSorted;
@property NSString *word;
@end

@implementation Anagram

- (Anagram *)initWithString:(NSString *)word
{
    if (self == [super init]) {
        self.word = [word lowercaseString];
        self.wordSorted = [self alphabetize:word];
    }
    
    return self;
}

// check for anagram matches
- (NSArray *)match:(NSArray *)candidates
{
    NSMutableArray *matches = [NSMutableArray array];
    
    for (NSString *candidate in candidates) {
        
        if ([[candidate lowercaseString] isEqualTo:self.word]) {
            continue; // Skip if it's the same word
        }
        
        NSMutableArray *sorted = [self alphabetize:candidate];
        if ([self.wordSorted isEqualToArray: sorted]) {
            [matches addObject:candidate];
        }
    }
    
    return matches;
}

-(NSMutableArray *)alphabetize:(NSString *)unsorted
{
    NSMutableArray *letters = [NSMutableArray arrayWithCapacity:unsorted.length];
    
    for (int i = 0; i < unsorted.length; ++i) {
        NSString *letter = [unsorted substringWithRange:NSMakeRange(i, 1)];
        [letters addObject:[letter lowercaseString]];
    }

    [letters sortUsingComparator:^(NSString *a, NSString *b) {
        return [a compare:b];
    }];
    
    return letters;
}

@end
