//
//  Fraction.m
//  Prog10-ex03
//
//  Created by Eric Golovin on 10/13/19.
//  Copyright © 2019 EricGolovin. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction

@synthesize numerator, denominator;

-(id) initWithDenominator:(int)n andDenominator:(int)d {
    self = [super init];
    
    if (self) {
        [self setNumerator:n andDenominator:d];
    }
    return self;
}

-(void) setNumerator:(int)n andDenominator:(int)d {
    numerator = n;
    denominator = d;
}

-(Fraction *) add:(Fraction *)f {
    Fraction *result = [Fraction new];
    
    result.numerator = numerator * f.denominator + denominator * f.numerator;
    result.denominator = denominator * f.denominator;
    
    extern int gCounter;
    gCounter++;
    
    return result;
}

-(void) printAddCounter {
    extern int gCounter;
    NSLog(@"%i", gCounter);
}

@end
