//
//  Fraction.m
//  Prog10-ex05
//
//  Created by Eric Golovin on 10/14/19.
//  Copyright © 2019 EricGolovin. All rights reserved.
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

-(instancetype) initWith:(int)n over:(int)d {
    self = [super init];
    
    if (self) {
        [self setNominator:n over:d];
    }
    return self;
}

@end
