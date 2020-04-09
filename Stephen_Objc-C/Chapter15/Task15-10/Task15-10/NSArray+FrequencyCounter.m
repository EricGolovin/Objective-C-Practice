//
//  NSArray+FrequencyCounter.m
//  Task15-10
//
//  Created by Eric Golovin on 12/27/19.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import "NSArray+FrequencyCounter.h"

#import <AppKit/AppKit.h>


@implementation NSArray (FrequencyCounter)

-(void) printFrequency:(NSArray *)integers {
    NSCountedSet *setOfIntergers = [[NSCountedSet alloc] initWithArray:integers];
    for (NSSet *num in setOfIntergers) {
        NSLog(@"Object %@", num);
        NSLog(@"Number of times %lu", (unsigned long)[setOfIntergers countForObject:num]);
        NSLog(@"-----------------");
    }
}

@end
