//
//  Calculator.h
//  Fraction_Calculator
//
//  Created by Eric Golovin on 1/5/20.
//  Copyright © 2020 ericgolovin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

NS_ASSUME_NONNULL_BEGIN

@interface Calculator : NSObject

@property (strong, nonatomic) Fraction *operand1;
@property (strong, nonatomic) Fraction *operand2;
@property (strong, nonatomic) Fraction *accumulator;

-(Fraction *) performOperation:(char)op;
-(void) clear;

@end

NS_ASSUME_NONNULL_END
