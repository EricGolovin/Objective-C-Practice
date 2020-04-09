//
//  main.m
//  Prog10-ex03
//
//  Created by Eric Golovin on 10/13/19.
//  Copyright © 2019 EricGolovin. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Fraction.h"

int gCounter = 0;

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *aFrac = [[Fraction alloc] initWithDenominator:3 andDenominator:5];
        Fraction *bFrac = [[Fraction alloc] initWithDenominator:1 andDenominator:4];
        
        Fraction *cFrac = [aFrac add:bFrac];
        
        [aFrac printAddCounter];
        
        NSLog(@"numerator = %i, denominator = %i", cFrac.numerator, cFrac.denominator);
    }
    return 0;
}
