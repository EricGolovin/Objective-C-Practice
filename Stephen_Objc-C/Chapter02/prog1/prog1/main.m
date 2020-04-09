//
//  main.m
//  prog1
//
//  Created by Eric Golovin on 8/27/19.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Chapter 2
        NSLog(@"Hello, World!");
        NSLog(@"Programming in Objective-C is even more fun!");
        NSLog(@"Testing... \n..1\n...2\n....3");
    }
    
    @autoreleasepool {
        // Chapter 2
        int value1  = 44;
        int value2 = 455;
        int sum = value1 + value2;
        
        NSLog(@"The sum of %i and %i is %i", value1, value2, sum);
    }
    
    @autoreleasepool {
        // Chapter 2, ex 2
        NSLog(@"In Objective-C, lowercase letters are significant.\nmain is where program execution begins. Open and closed braces enclose program statements in a routine.\nAll program statements must be terminated by a semicolon.");
    }
    
    @autoreleasepool {
        // Chapter 2, ex 3
        int i = 1;
        NSLog(@"Testing...");
        NSLog(@"....%i", i);
        NSLog(@"...%i", i + 1);
        NSLog(@"..%i", i + 2);
    }
    
    @autoreleasepool {
        // Chapter 2, ex 4
        NSLog(@"87 minus 15 is %i", 87 - 15);
    }
    
    @autoreleasepool {
        // Chapter 2, ex 5
        int sum;
        sum = 25 + 37 - 19;
        NSLog(@"The answer is %i", sum);
    }
    return 0;
}
