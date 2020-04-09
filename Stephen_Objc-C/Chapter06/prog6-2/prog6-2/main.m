//
//  main.m
//  prog6-2
//
//  Created by Eric Golovin on 9/11/19.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction: NSObject

-(void) print;
-(void) setNumberator: (int) n;
-(void) setDenominator: (int) d;
-(int) numerator;
-(int) denominator;
-(double) convertToNum;

@end

@implementation Fraction {
    int numerator;
    int denominator;
}

-(void) print {
    NSLog(@" %i/%i", numerator, denominator);
}

-(void) setNumberator:(int)n {
    numerator = n;
}

-(void) setDenominator:(int)d {
    denominator = d;
}

-(int) numerator {
    return numerator;
}

-(int) denominator {
    return denominator;
}

-(double) convertToNum {
    if (denominator != 0) {
        return (double) numerator / denominator;
    } else {
        return NAN;
    }
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *aFraction = [[Fraction alloc] init];
        Fraction *bFraction = [[Fraction alloc] init];
        
        [aFraction setNumberator: 1];
        [aFraction setDenominator: 4];
        
        [aFraction print];
        NSLog(@" =");
        NSLog(@"%g", [aFraction convertToNum]);
        
        [bFraction print];
        NSLog(@" =");
        NSLog(@"%g", [bFraction convertToNum]);
    }
    return 0;
}
