//
//  main.m
//  prog06-ex03
//
//  Created by Eric Golovin on 9/3/19.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int number, sumOfDigits = 0;
        
        NSLog(@"Enter your number:");
        scanf("%i", &number);
        
        do {
            sumOfDigits += number % 10;
            number /= 10;
        } while (number != 0);
        
        NSLog(@"%i", sumOfDigits);
    }
    return 0;
}
