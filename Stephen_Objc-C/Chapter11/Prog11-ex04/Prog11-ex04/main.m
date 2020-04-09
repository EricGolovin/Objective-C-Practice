//
//  main.m
//  Prog11-ex04
//
//  Created by Eric Golovin on 10/21/19.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Calculator.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Calculator *myCalc = [[Calculator alloc] init];
        
        [myCalc setAccumulator:M_PI/6];
        
        NSLog(@"sin of M_PI/6 = %.1f", [myCalc sin]);
        
        
    }
    return 0;
}
