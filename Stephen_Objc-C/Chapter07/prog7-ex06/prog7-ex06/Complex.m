//
//  Complex.m
//  prog7-ex06
//
//  Created by Eric Golovin on 04.10.2019.
//  Copyright © 2019 EricGolovin. All rights reserved.
//

#import "Complex.h"

@implementation Complex

@synthesize realNumber, imaginaryNumber;

-(void) set:(double)real :(double)imaginary {
    realNumber = real;
    imaginaryNumber = imaginary;
}

-(void) print {
    NSLog(@"%.1lf + %.1lfi", realNumber, imaginaryNumber);
}

-(double) real {
    return realNumber;
}

-(double) imaginary {
    return imaginaryNumber;
}

-(Complex *) add:(Complex *)complexNum {
    Complex *result = [[Complex alloc] init];
    
    result.realNumber = realNumber + complexNum.realNumber;
    result.imaginaryNumber = imaginaryNumber + complexNum.imaginaryNumber;
    
    return result;
}

@end
