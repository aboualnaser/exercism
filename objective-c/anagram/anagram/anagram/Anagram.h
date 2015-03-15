//
//  Anagram.h
//  anagram
//
//  Created by Chris Sprague on 3/14/15.
//  Copyright (c) 2015 exercism. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Anagram : NSObject

- (Anagram *)initWithString:(NSString *)word;
- (NSArray *)match:(NSArray *)candidates;

@end