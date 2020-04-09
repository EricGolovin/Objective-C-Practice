//
//  main.m
//  prog02
//
//  Created by Eric Golovin on 8/28/19.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import <Foundation/Foundation.h>

//---- @interface section ----

@interface Fraction : NSObject

-(void) print;
-(void) setNumerator: (int)n;
-(void) setDenominator: (int)d;
-(int) getNumerator;
-(int) getDenominator;

@end

//---- @implementation section ----

@implementation Fraction {
    int numerator;
    int denominator;
    
}

-(void) print {
    NSLog(@"%i/%i", numerator, denominator);
}

-(void) setNumerator:(int)n {
    numerator = n;
}

-(void) setDenominator:(int)d {
    denominator = d;
}

-(int) getNumerator {
    return numerator;
}

-(int) getDenominator {
    return denominator;
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Create an instance of a Fraction
        Fraction *frac1 = [[Fraction alloc] init]; // or [Fraction new]
        Fraction *frac2 = [[Fraction alloc] init]; // or [Fraction new]
        
        // Set 1st fraction to 2/3
        
        [frac1 setNumerator:2];
        [frac1 setDenominator:3];
        
        // Set 2nd fraction 3/7
        
        [frac2 setNumerator:3];
        [frac2 setDenominator:7];
        
        // Display the fractins
        
        NSLog(@"First fraction is:");
        
        [frac1 print];
        
        NSLog(@"Second fraction is:");
        
        [frac2 print];
        
        NSLog(@"The value of the 1st fraction is: %i/%i", [frac1 getNumerator], [frac1 getDenominator]);
    }
    return 0;
}
