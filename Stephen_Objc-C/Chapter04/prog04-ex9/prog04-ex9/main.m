//
//  main.m
//  prog04-ex9
//
//  Created by Eric Golovin on 8/29/19.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject

// accumulator methods
-(void) setAccumulator:(double)value;
-(void) clear;
-(double) accumulator;

// arithmetic methods
-(double) add:(double) value;
-(double) subtract:(double)value;
-(double) multiply:(double)value;
-(double) divide:(double)value;

// other methods
-(double) changeSign;
-(double) reciprocal;
-(double) xSquared;

// memory managment
-(double) memory;
-(double) memoryClear;
-(double) memoryStore;
-(double) memoryRecall;
-(double) memoryAdd:(double)value;
-(double) memorySubtract:(double)value;

@end

@implementation Calculator {
    double accumulator;
    double memory;
}

-(void) setAccumulator:(double)value {
    accumulator = value;
}

-(void) clear {
    accumulator = 0;
}

-(double) accumulator {
    return accumulator;
}

-(double) add:(double)value {
    accumulator += value;
    return accumulator + value;
}

-(double) subtract:(double)value {
    accumulator -= value;
    return accumulator - value;
}

-(double) multiply:(double)value {
    accumulator *= value;
    return accumulator * value;
}

-(double) divide:(double)value {
    accumulator /= value;
    return accumulator / value;
}

-(double) changeSign {
    accumulator = -accumulator;
    return -accumulator;
}

-(double) reciprocal {
    return 1 / accumulator;
}

-(double) xSquared {
    accumulator *= accumulator;
    return accumulator * accumulator;
}

-(double) memory {
    return memory;
}

-(double) memoryClear {
    memory = 0;
    return accumulator;
}

-(double) memoryStore {
    memory = accumulator;
    return accumulator;
}

-(double) memoryRecall {
    accumulator = memory;
    return accumulator;
}

-(double) memoryAdd:(double)value {
    memory += value;
    return memory;
}

-(double) memorySubtract:(double)value {
    memory -= value;
    return memory;
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Calculator *deskCalc = [[Calculator alloc] init];
        
        [deskCalc setAccumulator: 100];
        [deskCalc add:33];
        [deskCalc subtract:23];
        [deskCalc multiply:3];
        [deskCalc divide:4];
        [deskCalc changeSign];
        [deskCalc xSquared];
        
        [deskCalc memoryStore];
        [deskCalc xSquared];
        [deskCalc memoryRecall];
        [deskCalc memoryAdd:33];
        [deskCalc memorySubtract:22];
        
        NSLog(@"The result is %g", [deskCalc accumulator]);
        NSLog(@"One divided by %g is %f", [deskCalc accumulator], [deskCalc reciprocal]);
        NSLog(@"Accumulator: %f; Memory: %f", [deskCalc accumulator], [deskCalc memory]);
    }
    return 0;
}
