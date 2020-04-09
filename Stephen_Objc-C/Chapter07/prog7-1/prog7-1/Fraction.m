//
//  Fraction.m
//  prog7-1
//
//  Created by Eric Golovin on 9/24/19.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction

@synthesize numerator, denominator;

-(void) print {
    NSLog(@"%i/%i", numerator, denominator);
}

/*
-(void) setNumerator:(int)n {
    numerator = n;
}
*/
/*
-(void) setDenominator:(int)d {
    denominator  = d;
}
*/
/*
-(int) numerator {
    return numerator;
}
*/
/*
-(int) denominator {
    return denominator;
}
*/

-(void) setTo:(int)n over:(int)d {
    numerator = n;
    denominator = d;
}

-(double) convertToNum {
    if (denominator != 0) {
        return (double) numerator / denominator;
    } else {
        return NAN;
    }
}

-(void) add:(Fraction *)f {
    // a/b + c/d = ((a*d) + (b*c)) / (b * d)
    numerator = numerator * f.denominator + denominator * f.numerator;
    denominator = denominator * f.denominator;
}

@end
