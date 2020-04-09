//
//  Fraction.h
//  prog09-ex04
//
//  Created by Eric Golovin on 10/13/19.
//  Copyright © 2019 EricGolovin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Fraction : NSObject

@property double numerator, denominator;

-(void) print;
-(void) setNumerator:(double)n overDenominator:(double)d;
-(Fraction *) add:(Fraction *)f;

@end

NS_ASSUME_NONNULL_END
