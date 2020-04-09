//
//  main.m
//  Prog13
//
//  Created by Eric Golovin on 10/28/19.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import <Foundation/Foundation.h>

// blocks to calculate the nth triangular number

void (^calculateTriangularNumber) (int) = ^(int n) {
    int i, triangularNumber = 0;
    
    for (i = 0; i <= n; i++) {
        triangularNumber += i;
    }
    
    NSLog(@"Triangular number %i is %i", n, triangularNumber);
};

int (^gcd) (int, int) = ^(int u, int v) {
    int temp;
    
    while (v != 0) {
        temp = u % v;
        u = v;
        v = temp;
    }
    
    return u;
};


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        calculateTriangularNumber(10);
        calculateTriangularNumber(20);
        calculateTriangularNumber(50);
        
        int someGCD = gcd(33, 15);
        NSLog(@"someGCD = %i", someGCD);
        
        
        __block int foo = 10;
        
        void (^printFoo)(void) = ^(void) {
            NSLog(@"FooV1 = %i", foo);
            foo += 10;
            NSLog(@"FooV2 = %i", foo);
        };
        
        printFoo();
    }
    return 0;
}
