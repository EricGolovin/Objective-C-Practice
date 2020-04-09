//
//  Complex.h
//  prog09-ex04
//
//  Created by Eric Golovin on 10/13/19.
//  Copyright © 2019 EricGolovin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Complex : NSObject

@property double real, imaginary;

-(void) print;
-(void) setReal: (double)a andImaginary: (double)b;
-(Complex *) add: (Complex * )f;

@end

NS_ASSUME_NONNULL_END
