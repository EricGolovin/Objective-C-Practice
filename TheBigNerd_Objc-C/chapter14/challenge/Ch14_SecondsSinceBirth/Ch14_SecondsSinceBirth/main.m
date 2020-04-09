//
//  main.m
//  Ch14_SecondsSinceBirth
//
//  Created by Eric Golovin on 1/6/20.
//  Copyright © 2020 ericgolovin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDateComponents *comps = [[NSDateComponents alloc] init];
        [comps setYear:2002];
        [comps setMonth:6];
        [comps setDay:4];
        [comps setHour:23];
        [comps setMinute:55];
        [comps setSecond:0];
        
        NSCalendar *g = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
        NSDate *dateOfBirth = [g dateFromComponents:comps];
        
        double secondsSinceBirth = [[NSDate date] timeIntervalSinceDate:dateOfBirth];
        
        NSLog(@"Seconds since birthday to now = %f", secondsSinceBirth);
    }
    return 0;
}
