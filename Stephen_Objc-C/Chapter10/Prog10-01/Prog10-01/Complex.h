//
//  Complex.h
//  Prog10-01
//
//  Created by Eric Golovin on 10/13/19.
//  Copyright © 2019 EricGolovin. All rights reserved.
//

#import "Fraction.h"

NS_ASSUME_NONNULL_BEGIN

@interface Complex : Fraction

@property double complexOne, complexTwo;

-(void) setComplex:(double)d and:(double)a;

@end

NS_ASSUME_NONNULL_END
