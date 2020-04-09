//
//  NSDate+NSDate_ElapsedDays.h
//  Task15-1
//
//  Created by Eric Golovin on 12/24/19.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import <AppKit/AppKit.h>


#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSDate (NSDate_ElapsedDays)

-(unsigned long) elapsedDays: (NSDate *) theDate;

@end

NS_ASSUME_NONNULL_END
