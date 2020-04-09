//
//  NSDate+DateMonger.h
//  DateMonger
//
//  Created by Eric Golovin on 1/18/20.
//  Copyright © 2020 ericgolovin. All rights reserved.
//

#import <AppKit/AppKit.h>


#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSDate (DateMonger)

+(NSDate *)dateFromDay:(int)day andMonth:(int)month  andYear:(int)year;

@end

NS_ASSUME_NONNULL_END
