//
//  main.m
//  Prog10-ex05
//
//  Created by Eric Golovin on 10/14/19.
//  Copyright © 2019 EricGolovin. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        typedef Fraction *FractionObj;
        FractionObj aFrac = [[Fraction alloc] initWith:3 over:5];
        NSLog(@"n = %i, d = %i", aFrac.nominator, aFrac.denominator);
    }
    return 0;
}
