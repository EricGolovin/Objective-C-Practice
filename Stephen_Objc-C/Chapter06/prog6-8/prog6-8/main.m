//
//  main.m
//  prog6-8
//
//  Created by Eric Golovin on 9/12/19.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject

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

@implementation Calculator {
    double accumulator;
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

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        double value1, value2;
        char operator;
        int times;
        Calculator *deskCalc = [[Calculator alloc] init];
        
        NSLog(@"How many operations do you want to test?");
        scanf("%i", &times);
        
        for (int i = 1; i <= times; i++) {
            NSLog(@"Type in your expression.");
            scanf("%lf %c %lf", &value1, &operator, &value2);
            
            [deskCalc setAccumulator:value1];
            
            if (operator == '+') {
                [deskCalc add:value2];
            } else if (operator == '-') {
                [deskCalc substract:value2];
            } else if (operator == '*') {
                [deskCalc multiply:value2];
            } else if (operator == '/') {
                [deskCalc divide:value2];
            } else {
                NSLog(@"Unknown operator");
            }
            
            NSLog(@"%.2f", [deskCalc accumulator]);
        }
    }
    return 0;
}
