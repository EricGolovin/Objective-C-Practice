//
//  Fraction.h
//  Fraction_Calculator
//
//  Created by Eric Golovin on 1/5/20.
//  Copyright © 2020 ericgolovin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Fraction : NSObject

@property int numerator, denominator;

-(void) print;
-(void) setTo:(int)n over:(int)d;
-(Fraction *) add:(Fraction *)f;
-(Fraction *) substract:(Fraction *)f;
-(Fraction *) multiply:(Fraction *)f;
-(Fraction *) divide:(Fraction *)f;
-(void) reduce;
-(double) convertToNum;
-(NSString *) convertToString;

@end

NS_ASSUME_NONNULL_END
