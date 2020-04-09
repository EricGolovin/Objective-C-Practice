//
//  Rectangle.h
//  prog08-ex08
//
//  Created by Eric Golovin on 10/12/19.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Rectangle : NSObject

@property double width, height;

-(void) setWidth:(double)width setHeight:(double)height;
-(void) draw;

@end

NS_ASSUME_NONNULL_END
