//
//  Bob.m
//  bob
//
//  Bob is a lackadaisical teenager.
//  In conversation, his responses are very limited.
//
//
//  Created by Chris Sprague on 3/13/15.
//  Copyright (c) 2015 exercism. All rights reserved.
//

#import "Bob.h"

@implementation Bob

-(instancetype)init
{
    if (self = [super init]) {
    }
    return self;
}

// Say something to Bob
- (NSString *)hey:(NSString *)input
{
    NSString *response = [NSString new];

    if ([Bob yell:input]) {
        response = @"Whoa, chill out!";
        
    } else if ([Bob question:input]) {
            response = @"Sure.";
        
    } else if ([Bob address:input]) {
        response = @"Fine, be that way.";
        
    } else {
        response = @"Whatever.";
    }
    
    return response;
    
}

// Bob answers 'Sure.' if you ask him a question.
+ (BOOL)question:(NSString *)input
{
    return [input hasSuffix:@"?"];
}

// He answers 'Whoa, chill out!' if you yell at him.
+ (BOOL)yell:(NSString *)input
{
    return ([input isEqualToString:[input uppercaseString]]
            && ![[input lowercaseString] isEqualToString:input]);
}

// He says 'Fine. Be that way!' if you address him without actually saying anything.
+ (BOOL)address:(NSString *)input
{
    return ([input length] == 0
            || [[input stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] length] == 0);
}

@end