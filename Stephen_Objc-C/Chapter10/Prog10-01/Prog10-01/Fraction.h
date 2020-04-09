//
//  Fraction.h
//  Prog10-01
//
//  Created by Eric Golovin on 10/13/19.
//  Copyright © 2019 EricGolovin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Fraction : NSObject

@property int nominator, denominator;

-(void) print;
-(void) setNominator:(int)n over:(int)d;
-(instancetype) initWith:(int)n over:(int)d;

@end

NS_ASSUME_NONNULL_END
