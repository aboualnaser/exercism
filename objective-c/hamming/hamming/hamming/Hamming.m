//
//  Hamming.m
//  hamming
//
//  Created by Chris Sprague on 3/14/15.
//  Copyright (c) 2015 exercism. All rights reserved.
//

#include "Hamming.h"

@implementation Hamming

// Calculate difference between two strings
+(NSUInteger *)compute:(NSString *)strandA against:(NSString *)strandB
{
    NSUInteger *hammingDisatance = 0;
    
    for (NSInteger i = 0; i < strandA.length; i++) {
        unichar nucleotideA = [strandA characterAtIndex:i];
        unichar nucleotideB = [strandB characterAtIndex:i];
        
        if (nucleotideA != nucleotideB) {
            hammingDisatance++;
        }
    }
    
    return hammingDisatance;
}

@end

