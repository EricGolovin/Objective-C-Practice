//
//  Fraction.m
//  ComplexFraction-9_1
//
//  Created by Eric Golovin on 12/10/19.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction

@synthesize nominator, denominator;

-(void) print {
    NSLog(@"%i/%i", nominator, denominator);
}

-(void) setNominator:(int)n over:(int)d {
    
    nominator = n;
    denominator = d;
}

-(Fraction *) add:(Fraction *)f {
    Fraction *result = [[Fraction alloc] init];
    result.nominator = result.nominator * f.denominator + result.denominator * f.nominator;
    result.denominator = result.denominator * f.denominator;
    return result;
}

@end
