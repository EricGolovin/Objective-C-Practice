//
//  main.m
//  Task15-1
//
//  Created by Eric Golovin on 12/24/19.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSDate+NSDate_ElapsedDays.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDate *date = [NSDate date];
        
        NSDate *yesterdayDate = [NSDate dateWithTimeIntervalSinceNow: 1000000];
        
        printf("%lu", [date elapsedDays: yesterdayDate]);
        
    }
    return 0;
}
