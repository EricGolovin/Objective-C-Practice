//
//  main.m
//  prog6-4
//
//  Created by Eric Golovin on 9/11/19.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int number_to_test, remainder;
        
        NSLog(@"Enter your number to be tested:");
        scanf("%i", &number_to_test);
        
        remainder = number_to_test % 2;
        
        if (remainder == 0) {
            NSLog(@"The number is even");
        } else {
            NSLog(@"The number is odd");
        }
    }
    return 0;
}
