//
//  Fraction.h
//  Prog10-ex03
//
//  Created by Eric Golovin on 10/13/19.
//  Copyright © 2019 EricGolovin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Fraction : NSObject

@property int numerator, denominator;

-(id) initWithDenominator:(int)n andDenominator:(int)d;
-(void) setNumerator:(int)n andDenominator:(int)d;
-(Fraction *) add:(Fraction *)f;
-(void) printAddCounter;

@end

NS_ASSUME_NONNULL_END
