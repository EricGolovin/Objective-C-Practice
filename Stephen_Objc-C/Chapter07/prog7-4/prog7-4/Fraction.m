//
//  Fraction.m
//  prog7-4
//
//  Created by Eric Golovin on 9/25/19.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction

@synthesize numerator, denominator;

-(void) print:(BOOL)reduce {
    int temp = 0;
    if (reduce) {
        [self reduce];
    }
    if (denominator < numerator) {
        temp = numerator;
        numerator = numerator % denominator;
        NSLog(@"%i %i/%i", (temp / denominator), numerator, denominator);
    } else {
        NSLog(@"%i/%i", numerator, denominator);
    }
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

// add a Fraction to the receiver

-(Fraction *) add:(Fraction *)f {
    
    Fraction *result = [[Fraction alloc] init];
    
    result.numerator = numerator * f.denominator + denominator * f.numerator;
    result.denominator = denominator * f.denominator;
    
    [result reduce];
    
    return result;
}

-(Fraction *) substract:(Fraction *)f {
    Fraction *result = [Fraction new];
    
    result.numerator = numerator * f.denominator - denominator * f.numerator;
    result.denominator = denominator * f.denominator;
    
    [result reduce];
    
    return result;
}

-(Fraction *) multiply:(Fraction *)f {
    Fraction *result = [[Fraction alloc] init];
    
    result.numerator = numerator * f.numerator;
    result.denominator = denominator * f.denominator;
    
    [result reduce];
    
    return result;
}

-(Fraction *) divide:(Fraction *)f {
    Fraction *result = [Fraction new];
    
    result.numerator = numerator * f.denominator;
    result.denominator = denominator * f.numerator;
    
    [result reduce];
    
    return result;
}

-(void) reduce {
    int u = numerator;
    int v = denominator;
    int temp;
    
    while (v != 0) {
        temp = u % v;
        u = v;
        v = temp;
    }
    
    numerator /= u;
    denominator /= u;
    
    // [self reduce];
}

@end
