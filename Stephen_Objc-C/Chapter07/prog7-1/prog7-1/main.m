//
//  main.m
//  prog7-1
//
//  Created by Eric Golovin on 9/24/19.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *aFraction = [Fraction new];
        Fraction *bFraction = [[Fraction alloc] init];
        
        // set fractions to 1/4 and 1/2
        
        [aFraction setTo:1 over:4];
        [bFraction setTo:1 over:2];
        
        // aFraction.numerator = 1; // [aFraction setNumerator:1];
        // aFraction.denominator = 4; // [aFraction setDenominator:4];
        
        // print the results
        [aFraction print];
        NSLog(@"+");
        [bFraction print];
        NSLog(@"=");
        
        [aFraction add:bFraction];
        [aFraction print];
    }
    return 0;
}
