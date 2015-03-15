//
//  NucleotideCount.h
//  nucleotide-count
//
//  Created by Chris Sprague on 3/14/15.
//  Copyright (c) 2015 exercism. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DNA : NSObject

-(DNA *)initWithStrand:(NSString *)strand;
- (NSDictionary *)nucleotideCounts;
- (NSUInteger *)count:(NSString *)nucleotide;

@end
