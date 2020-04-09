//
//  main.m
//  prog06
//
//  Created by Eric Golovin on 9/3/19.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int number, right_digit;
        
        NSLog(@"Enter your number.");
        scanf("%i", &number);
        
        do {
            right_digit = number % 10;
            NSLog(@"%i", right_digit);
            number /= 10;
        } while (number != 0);
    }
    return 0;
}
