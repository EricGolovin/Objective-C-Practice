//
//  Fraction.h
//  prog7-4
//
//  Created by Eric Golovin on 9/25/19.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Fraction : NSObject

@property int numerator, denominator;

-(void) print: (BOOL)reduce;
-(void) setTo: (int) n over: (int) d;
-(double) convertToNum;
-(Fraction *) add: (Fraction *) f;
-(Fraction *) substract: (Fraction *) f;
-(Fraction *) multiply: (Fraction *) f;
-(Fraction *) divide: (Fraction *) f;
-(void) reduce;

@end

NS_ASSUME_NONNULL_END
