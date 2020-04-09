//
//  Fraction.h
//  prog7-1
//
//  Created by Eric Golovin on 9/24/19.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Fraction : NSObject

@property int numerator, denominator;

-(void) print;
// -(void) setNumerator: (int)n;
// -(void) setDenominator: (int)d;
-(void) setTo: (int) n over: (int) d;
-(double) convertToNum;
-(void) add: (Fraction *) f;

@end

NS_ASSUME_NONNULL_END
