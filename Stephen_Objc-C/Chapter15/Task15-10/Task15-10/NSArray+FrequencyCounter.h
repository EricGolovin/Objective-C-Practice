//
//  NSArray+FrequencyCounter.h
//  Task15-10
//
//  Created by Eric Golovin on 12/27/19.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import <AppKit/AppKit.h>


#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSArray (FrequencyCounter)

-(void) printFrequency: (NSArray *)integers;

@end

NS_ASSUME_NONNULL_END
