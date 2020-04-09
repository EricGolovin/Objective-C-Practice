//
//  Fraction.m
//  Prog11-1
//
//  Created by Eric Golovin on 10/18/19.
//  Copyright © 2019 EricGolovin. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction

@synthesize numerator, denominator;

-(void) setTo:(int)n over:(int)d {
    numerator = n;
    denominator = d;
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
}

-(double) convertToNum {
    if (denominator != 0) {
        return (double) numerator / denominator;
    } else {
        return NAN;
    }
}

-(void) print {
    NSLog(@"%i/%i", numerator, denominator);
}

-(NSString *) description {
    return [NSString stringWithFormat:@"%i/%i", numerator, denominator];
}

@end

@implementation Fraction (MathOps)

-(Fraction *) add:(Fraction *)f {
    Fraction * result = [Fraction new];
    
    result.numerator = (self.numerator * f.denominator) + (self.denominator * f.numerator);
    result.denominator = self.denominator * f.denominator;
    [result reduce];
    
    return result;
}

-(Fraction *) mul:(Fraction *)f {
    Fraction *result = [Fraction new];
    
    result.numerator = self.numerator * f.numerator;
    result.denominator = self.denominator * f.denominator;
    [result reduce];
    
    return result;
}

-(Fraction *) sub:(Fraction *)f {
    Fraction *result = [Fraction new];
    
    result.numerator = (self.numerator * f.denominator) - (self.denominator * f.numerator);
    result.denominator = self.denominator * f.denominator;
    [result reduce];
    
    return result;
}

-(Fraction *) div:(Fraction *)f {
    Fraction *result = [Fraction new];
    
    result.numerator = self.numerator * f.denominator;
    result.denominator = self.denominator * f.numerator;
    [result reduce];
    
    return result;
}

-(Fraction *) invert {
    Fraction *result = [Fraction new];
    
    result.numerator = self.denominator;
    result.denominator = self.numerator;
    
    return result;
}

-(BOOL) isEqualTo:(Fraction *)f {
    [self reduce];
    [f reduce];
    
    if ((self.numerator == f.numerator && self.denominator == f.denominator)) {
        return true;
    } else {
        return false;
    }
}

-(int) compare:(Fraction *)f {
    [self reduce];
    [f reduce];
    
    if ((self.numerator == f.numerator && self.denominator == f.denominator)) {
        return 0;
    } else if ((self.numerator < f.numerator && self.denominator < f.denominator)) {
        return -1;
    } else if ((self.numerator > f.numerator && self.denominator > f.denominator)) {
        return 1;
    } else {
        return NAN;
    }
}

@end

@implementation Fraction (Comparison)

-(NSComparisonResult) compareFraction:(Fraction *)fraction {
    [self reduce];
    [fraction reduce];
    
    NSNumber *sValue = [NSNumber numberWithDouble:self.numerator / self.denominator];
    NSNumber *fracValue = [NSNumber numberWithDouble:fraction.numerator / fraction.denominator];
    return [sValue compare:fracValue];
}

@end
