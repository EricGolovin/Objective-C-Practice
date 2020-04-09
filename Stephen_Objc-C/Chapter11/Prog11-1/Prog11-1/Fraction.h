//
//  Fraction.h
//  Prog11-1
//
//  Created by Eric Golovin on 10/18/19.
//  Copyright © 2019 EricGolovin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Fraction : NSObject

@property int numerator, denominator;

-(void) setTo:(int)n over:(int)d;
-(void) reduce;
-(double) convertToNum;
-(void) print;
-(NSString *) description;

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

@interface Fraction (Comparison)

-(NSComparisonResult) compareFraction:(id)fraction;

@end

NS_ASSUME_NONNULL_END
