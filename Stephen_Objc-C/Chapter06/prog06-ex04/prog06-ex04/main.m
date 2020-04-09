//
//  main.m
//  prog06-ex04
//
//  Created by Eric Golovin on 9/12/19.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UnaryCalculation: NSObject

// accumulator
-(void) setAccumulator: (double) value;
-(double) getAccumulator;

// unary oparations
-(void) incrementAccumulatorBy: (double) value;
-(void) substractAccumulatorBy: (double) value;
-(void) multiplyAccumulatorBy: (double) value;
-(void) divideAccumulatorBy: (double) value;

// loop controller
-(void) setCounter: (BOOL) value;
-(bool) getCounter;

@end

@implementation UnaryCalculation {
    double accumulator;
    BOOL counter;
}

-(void) setAccumulator:(double)value {
    accumulator = value;
}

-(double) getAccumulator {
    return accumulator;
}

-(void) incrementAccumulatorBy:(double)value {
    accumulator += value;
}

-(void) substractAccumulatorBy:(double)value {
    accumulator -= value;
}

-(void) multiplyAccumulatorBy:(double)value {
    accumulator *= value;
}

-(void) divideAccumulatorBy:(double)value {
    accumulator /= value;
}

-(void) setCounter:(BOOL)value {
    counter = value;
}

-(bool) getCounter {
    return counter;
}

@end
  
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        double value1;
        char operator;
        UnaryCalculation *unaryCalc = [UnaryCalculation new];
        
        [unaryCalc setCounter:true];
        
        while ([unaryCalc getCounter]) {
            NSLog(@"Please enter the function:");
            scanf("%lf %c", &value1, &operator);
            NSLog(@"ACTIVE: Accumulator is %lf", [unaryCalc getAccumulator]);
            switch (operator) {
                case 'S':
                case 's':
                    [unaryCalc setAccumulator:value1];
                    break;
                case 'E':
                case 'e':
                    [unaryCalc setCounter:false];
                    NSLog(@"END: Accumulator is %lf", [unaryCalc getAccumulator]);
                    break;
                case '+':
                    [unaryCalc incrementAccumulatorBy:value1];
                    break;
                case '-':
                    [unaryCalc substractAccumulatorBy:value1];
                    break;
                case '*':
                    [unaryCalc multiplyAccumulatorBy:value1];
                    break;
                case '/':
                    [unaryCalc divideAccumulatorBy:value1];
                    break;
                default:
                    NSLog(@"Function is not supported");
                    break;
            }
            
            
        }
    }
    return 0;
}
