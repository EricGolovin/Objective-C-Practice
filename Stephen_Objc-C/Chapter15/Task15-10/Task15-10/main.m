//
//  main.m
//  Task15-10
//
//  Created by Eric Golovin on 12/27/19.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSArray+FrequencyCounter.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *numbers = [[NSArray alloc] initWithObjects:@1, @2, @3, @2, @1, @4, nil];
        [numbers printFrequency:numbers];
    }
    return 0;
}
