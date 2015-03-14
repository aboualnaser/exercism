//
//  WordCount.h
//  word-count
//
//  Created by Chris Sprague on 3/14/15.
//  Copyright (c) 2015 exercism. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WordCount : NSObject

- (WordCount *)initWithString:(NSString *)words;
- (NSMutableDictionary *)count;

@end