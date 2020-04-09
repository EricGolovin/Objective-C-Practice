//
//  Rectangle.m
//  prog08-06
//
//  Created by Eric Golovin on 12.10.2019.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import "Rectangle.h"
#import "Foundation/Foundation.h"

@implementation Rectangle {
    XYPoint *origin;
}

@synthesize width, height;

-(void) setOrigin:(XYPoint *)pt {
    
    if (!origin) {
        origin = [[XYPoint alloc] init];
    }
    
    origin.x = pt.x;
    origin.y = pt.y;
}

-(void) setWidth:(float)w addHeight:(float)h {
    width = w;
    height = h;
}

-(float) area {
    return width * height;
}

-(float) perimeter {
    return (width + height) * 2;
}

-(XYPoint *) origin {
    return origin;
}

-(XYPoint *) translate: (XYPoint *)dots by: (float)moveDots {
    dots.x += moveDots;
    dots.y += moveDots;
    
    return dots;
}

-(BOOL) containsPoint:(XYPoint *)aPoint {
    if ((aPoint.x > origin.x && aPoint.x < (origin.x + width)) && (aPoint.y > origin.y && aPoint.y < (origin.y + height))) {
        return YES;
    } else {
        return NO;
    }
}

@end
