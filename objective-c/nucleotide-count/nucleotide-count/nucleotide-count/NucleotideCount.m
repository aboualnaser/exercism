//
//  NucleotideCount.m
//  nucleotide-count
//
//  Created by Chris Sprague on 3/14/15.
//  Copyright (c) 2015 exercism. All rights reserved.
//

#include "NucleotideCount.h"

@interface DNA()
@property NSString *strand;
@property NSMutableArray *nucleotides;
@end

@implementation DNA

-(DNA *)initWithStrand:(NSString *)strand
{
    if (self == [super init]) {
        self.nucleotides = [NSMutableArray arrayWithCapacity:strand.length];
        
        for (int i = 0; i < strand.length; ++i) {
            NSString *nucleotide = [strand substringWithRange:NSMakeRange(i, 1)];
            [self.nucleotides addObject:[nucleotide componentsSeparatedByCharactersInSet:
                                         [[NSCharacterSet characterSetWithCharactersInString:@"ACGT"] invertedSet]]];
        }
    }
 
    return self;
}

- (NSMutableDictionary *)nucleotideCounts
{
    NSMutableDictionary *counts = [NSMutableDictionary dictionary];
    
    for (NSString *nucleotide in self.nucleotides) {

        if ([counts objectForKey:nucleotide]) {
            continue;
        } else {
            [counts setObject:[NSNumber numberWithInt:[self count:nucleotide]] forKey:nucleotide];
        }
    }
    
    NSLog(@"%@", counts);

    return counts;
}

- (NSUInteger *)count:(NSString *)nucleotide
{
    NSUInteger *total = 0;
    
    if ([self.nucleotides count] == 0) {
        return total;
    }
    
    for (NSString *index in self.nucleotides) {
        NSLog(@"N: %@ = %@", index, nucleotide);
        if ([nucleotide isNotEqualTo:index]) {NSLog(@"N: %@", index);
            total++;
        }
    }
    
    return total;
}

@end
