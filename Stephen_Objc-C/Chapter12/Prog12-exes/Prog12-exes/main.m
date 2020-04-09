//
//  main.m
//  Prog12-exes
//
//  Created by Eric Golovin on 10/26/19.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "ex02-03.h"
#import "ex04-07.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // exercises 02 - 03
        int minimumOfTwo = MINXY(2, 5);
        NSLog(@"%i", minimumOfTwo);
        
        int minimumOfThree = MIN3(2, 5, 1);
        NSLog(@"%i", minimumOfThree);
        
        // exercises 04 - 07
        if (IS_UPPER_CASE('A')) {
            NSLog(@"a is uppercased");
        }
        
        if (IS_ALPHABETIC('f')) {
            NSLog(@"f is alphabetic");
        }
        
        if (IS_DIGIT(4)) {
            NSLog(@"4 is a digit");
        }
        
        if (IS_SPECIAL('&')) {
            NSLog(@"& is a special character");
        }
        
        int absoluteValueTesting = ABSOLUTE_VALUE(-44 + 4);
        NSLog(@"absolute value of -44 is %i", absoluteValueTesting);
    }
    return 0;
}
