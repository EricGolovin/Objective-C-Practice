//
//  Calculator.h
//  Prog11-ex04
//
//  Created by Eric Golovin on 10/21/19.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Calculator : NSObject

@property double accumulator;

// accumulator methods
-(void) setAccumulator: (double) value;
-(void) clear;
-(double) accumulator;

// arithmetic methods
-(void) add: (double) value;
-(void) substract: (double) value;
-(void) multiply: (double) value;
-(void) divide: (double) value;

@end

@interface Calculator (Trig)

-(double) sin;
-(double) cos;
-(double) tan;

@end

NS_ASSUME_NONNULL_END
