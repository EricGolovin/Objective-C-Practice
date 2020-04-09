//
//  Complex.h
//  ComplexFraction-9_1
//
//  Created by Eric Golovin on 12/10/19.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Complex : NSObject

@property double real, imaginary;
-(void) print;
-(void) setReal:(double)a andImaginary:(double)b;
-(Complex *) add:(Complex *)f;

@end

NS_ASSUME_NONNULL_END
