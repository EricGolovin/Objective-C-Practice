//
//  Calculator.m
//  Prog11-ex04
//
//  Created by Eric Golovin on 10/21/19.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator

@synthesize accumulator;

-(void) setAccumulator:(double)value {
    accumulator = value;
}

-(void) clear {
    accumulator = 0;
}

-(double) accumulator {
    return accumulator;
}

-(void) add:(double)value {
    accumulator += value;
}

-(void) substract:(double)value {
    accumulator -= value;
}

-(void) multiply:(double)value {
    accumulator *= value;
}

-(void) divide:(double)value {
    if (value != 0.0) {
        accumulator /= value;
    } else {
        NSLog(@"Division by zero.");
        accumulator = NAN;
    }
}

@end

@implementation Calculator (Trig)

-(double) sin {
    return sin(accumulator);
}

-(double) cos {
    return cos(accumulator);
}

-(double) tan {
    return tan(accumulator);
}

@end
