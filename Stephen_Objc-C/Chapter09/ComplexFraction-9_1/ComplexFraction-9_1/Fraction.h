//
//  Fraction.h
//  ComplexFraction-9_1
//
//  Created by Eric Golovin on 12/10/19.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Fraction : NSObject

@property int nominator, denominator;
-(void) print;
-(void) setNominator:(int)n over:(int)d;
-(Fraction *) add: (Fraction *) f;

@end

NS_ASSUME_NONNULL_END
