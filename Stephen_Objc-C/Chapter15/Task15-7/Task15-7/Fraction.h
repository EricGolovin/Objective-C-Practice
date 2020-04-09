//
//  Fraction.h
//  Task15-7
//
//  Created by Eric Golovin on 12/25/19.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Fraction : NSObject

@property int numerator, denominator;

-(void) setTo:(int)n over:(int)d;
-(void) reduce;
-(double) convertToNum;
-(void) print;

@end

@interface Fraction (MathOps)

-(Fraction *) add:(Fraction *)f;
-(Fraction *) mul:(Fraction *)f;
-(Fraction *) sub:(Fraction *)f;
-(Fraction *) div:(Fraction *)f;
-(Fraction *) invert;
-(BOOL) isEqualTo:(Fraction *)f;
-(int) compare:(Fraction *)f;

@end

NS_ASSUME_NONNULL_END
