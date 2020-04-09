//
//  NSDate+NSDate_ElapsedDays.m
//  Task15-1
//
//  Created by Eric Golovin on 12/24/19.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import "NSDate+NSDate_ElapsedDays.h"

#import <AppKit/AppKit.h>


@implementation NSDate (NSDate_ElapsedDays)

-(unsigned long) elapsedDays:(NSDate *) theDate {
    NSDate *todayDate = [NSDate date];
    
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    NSDateComponents *components = [calendar components:NSCalendarUnitDay fromDate:todayDate toDate:theDate options:0];
    
    return [components day];
}

@end
