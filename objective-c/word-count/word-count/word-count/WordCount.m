//
//  WordCount.m
//  word-count
//
//  Created by Chris Sprague on 3/14/15.
//  Copyright (c) 2015 exercism. All rights reserved.
//

#import "WordCount.h"

@interface WordCount()
@property NSArray *wordList;
@end

@implementation WordCount


- (WordCount *)initWithString:(NSString *)words
{
    if (self == [super init]) {
        self.wordList = [words componentsSeparatedByString:@" "];
    }
    
    return self;
}

// Count occurances of each word in array and add totals to dictionary.
- (NSMutableDictionary *)count
{
    NSMutableDictionary *wordDictionary = [NSMutableDictionary dictionary];

    for (NSString *word in self.wordList) {
        NSString *cleanWord = [[[word lowercaseString] componentsSeparatedByCharactersInSet:
                                [[NSCharacterSet alphanumericCharacterSet] invertedSet]] componentsJoinedByString:@""];
        
        if ([cleanWord isNotEqualTo:@""]) {
            if ([wordDictionary objectForKey:cleanWord]) {
                int counter = [wordDictionary[cleanWord] intValue] + 1;
                [wordDictionary setObject:[NSNumber numberWithInteger:counter] forKey:cleanWord];
            } else {
                [wordDictionary setObject:@1 forKey:cleanWord];
            }
        }
    }
    
    return wordDictionary;
}


@end