//
//  Fraction.m
//  Prog10-01
//
//  Created by Eric Golovin on 10/13/19.
//  Copyright © 2019 EricGolovin. All rights reserved.
//

#import "Fraction.h"

int gDenom = 0;

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
