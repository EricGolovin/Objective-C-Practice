//
//  Rectangle.h
//  Prog11-ex05
//
//  Created by Eric Golovin on 10/21/19.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Rectangle : NSObject

@property double width, height;

-(id) initWithWidth:(double)w andHeight:(double)h;
-(void) setWidth:(double)w andHeight:(double)h;

@end

NS_ASSUME_NONNULL_END
