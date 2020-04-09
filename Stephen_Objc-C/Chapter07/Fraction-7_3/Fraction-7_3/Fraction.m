//
//  Fraction.m
//  Fraction-7_3
//
//  Created by Eric Golovin on 12/8/19.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction

@synthesize numerator, denominator;

-(void) print {
    NSLog(@"%i/%i", numerator, denominator);
}

-(double) convertToNum {
    if (denominator != 0) {
        return (double) numerator / denominator;
    } else {
        return NAN;
    }
}

-(void) setTo:(int)n over:(int)d {
    numerator = n;
    denominator = d;
}

-(void) add:(Fraction *)f {
    numerator = numerator * f.denominator + denominator * f.numerator;
    denominator = denominator * f.denominator;
}


@end
