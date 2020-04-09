//
//  Fraction.m
//  prog09-ex04
//
//  Created by Eric Golovin on 10/13/19.
//  Copyright © 2019 EricGolovin. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction

@synthesize numerator, denominator;

-(void) print {
    
}

-(void) setNumerator:(double)n overDenominator:(double)d {
    numerator = n;
    denominator = d;
}

-(Fraction *) add:(Fraction *)f {
    Fraction *result = [Fraction new];
    
    result.numerator = numerator * f.denominator + denominator * f.numerator;
    result.denominator = denominator * f.denominator;
    
    return result;
}

@end
