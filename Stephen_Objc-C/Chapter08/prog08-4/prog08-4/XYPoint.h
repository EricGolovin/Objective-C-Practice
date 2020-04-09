//
//  XYPoint.h
//  prog08-4
//
//  Created by Eric Golovin on 09.10.2019.
//  Copyright © 2019 EricGolovin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface XYPoint : NSObject

@property int x, y;

-(void) setX:(int)xVal setY:(int)yVal;

@end

NS_ASSUME_NONNULL_END
