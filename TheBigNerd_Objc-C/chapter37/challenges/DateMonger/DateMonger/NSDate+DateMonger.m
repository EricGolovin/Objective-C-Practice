//
//  NSDate+DateMonger.m
//  DateMonger
//
//  Created by Eric Golovin on 1/18/20.
//  Copyright © 2020 ericgolovin. All rights reserved.
//

#import "NSDate+DateMonger.h"

#import <AppKit/AppKit.h>


@implementation NSDate (DateMonger)

+(NSDate *)dateFromDay:(int)day andMonth:(int)month andYear:(int)year {
    NSDateComponents *dateComponents = [[NSDateComponents alloc] init];
    dateComponents.day = day;
    dateComponents.month = month;
    dateComponents.year = year;
    dateComponents.hour = 0;
    dateComponents.minute = 0;
    dateComponents.second = 0;
    
    NSCalendar *gregorianCalendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    NSDate *date = [gregorianCalendar dateFromComponents:dateComponents];
    
    return date;
}

@end
