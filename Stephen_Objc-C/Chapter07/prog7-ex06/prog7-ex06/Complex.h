//
//  Complex.h
//  prog7-ex06
//
//  Created by Eric Golovin on 04.10.2019.
//  Copyright © 2019 EricGolovin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Complex : NSObject

@property double realNumber, imaginaryNumber;

-(void) set:(double)real : (double)imaginary;
-(void) print;
-(double) real;
-(double) imaginary;

-(Complex *) add: (Complex *) complexNum;

@end

NS_ASSUME_NONNULL_END
