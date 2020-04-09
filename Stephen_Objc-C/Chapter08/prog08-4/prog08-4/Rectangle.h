//
//  Rectangle.h
//  prog08-4
//
//  Created by Eric Golovin on 09.10.2019.
//  Copyright © 2019 EricGolovin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class XYPoint;
@interface Rectangle : NSObject

@property int width, height;

-(XYPoint *) origin;
-(void) setOrigin: (XYPoint *)pt;
-(void) setWidth: (int)w addHeight: (int)h;
-(int) area;
-(int) perimeter;

@end

NS_ASSUME_NONNULL_END
