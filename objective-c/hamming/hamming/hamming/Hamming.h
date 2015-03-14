//
//  Hamming.h
//  hamming
//
//  Created by Chris Sprague on 3/14/15.
//  Copyright (c) 2015 exercism. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Hamming : NSObject

+(NSUInteger *)compute:(NSString *)strandA against:(NSString *)strandB;

@end