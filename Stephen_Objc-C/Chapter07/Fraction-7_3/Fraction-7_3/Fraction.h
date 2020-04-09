//
//  Fraction.h
//  Fraction-7_3
//
//  Created by Eric Golovin on 12/8/19.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Fraction : NSObject

@property int numerator, denominator;

-(void) print;
-(void) setTo: (int) n over: (int) d;
-(double) convertToNum;
-(void) add: (Fraction *) f;

@end

NS_ASSUME_NONNULL_END
