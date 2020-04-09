//
//  Complex.m
//  prog09-ex04
//
//  Created by Eric Golovin on 10/13/19.
//  Copyright © 2019 EricGolovin. All rights reserved.
//

#import "Complex.h"

@implementation Complex

@synthesize real, imaginary;

-(void) print {
    NSLog(@" %g + %gi ", real, imaginary);
}

-(void) setReal:(double)a andImaginary:(double)b {
    real = a;
    imaginary = b;
}

-(Complex *) add:(Complex *)f {
    Complex *result = [[Complex alloc] init];
    
    result.real = real + f.real;
    result.imaginary = imaginary + f.imaginary;
    
    return result;
}

@end
