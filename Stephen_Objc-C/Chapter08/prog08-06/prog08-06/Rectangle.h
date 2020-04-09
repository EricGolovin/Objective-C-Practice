//
//  Rectangle.h
//  prog08-06
//
//  Created by Eric Golovin on 12.10.2019.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import "GraphicObject.h"
#import "XYPoint.h"

NS_ASSUME_NONNULL_BEGIN

@interface Rectangle : GraphicObject

@property float width, height;

-(XYPoint *) origin;
-(void) setOrigin: (XYPoint *)pt;
-(void) setWidth: (float)w addHeight: (float)h;
-(float) area;
-(float) perimeter;
-(BOOL) containsPoint: (XYPoint *) aPoint;

-(XYPoint *) translate: (XYPoint *)dots by: (float)moveDots;


@end

NS_ASSUME_NONNULL_END
