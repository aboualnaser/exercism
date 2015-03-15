//
//  main.m
//  nucleotide-count
//
//  Created by Chris Sprague on 3/14/15.
//  Copyright (c) 2015 exercism. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NucleotideCount.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        DNA *dna = [[DNA alloc] initWithStrand:@"AAAA"];
        NSDictionary *results = [dna nucleotideCounts];
    }
    return 0;
}
