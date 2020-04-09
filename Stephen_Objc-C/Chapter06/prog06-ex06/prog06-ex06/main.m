//
//  main.m
//  prog06-ex06
//
//  Created by Eric Golovin on 9/13/19.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int right_digit, number;
        
        NSLog(@"Please, enter your number: ");
        scanf("%i", &number);
        
        do {
            right_digit = number % 10;
            if (right_digit < 0) {
                right_digit = -right_digit;
            }
            switch (right_digit) {
                case 0:
                    NSLog(@"zero");
                    break;
                case 1:
                    NSLog(@"one");
                    break;
                case 2:
                    NSLog(@"two");
                    break;
                case 3:
                    NSLog(@"three");
                    break;
                case 4:
                    NSLog(@"four");
                    break;
                case 5:
                    NSLog(@"five");
                    break;
                case 6:
                    NSLog(@"six");
                    break;
                case 7:
                    NSLog(@"seven");
                    break;
                case 8:
                    NSLog(@"eight");
                    break;
                case 9:
                    NSLog(@"nine");
                    break;
                default:
                    NSLog(@"NaN");
                    break;
            }
            number /= 10;
        } while (number != 0);
    }
    return 0;
}
