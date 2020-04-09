//
//  Rectangle.m
//  prog08-4
//
//  Created by Eric Golovin on 09.10.2019.
//  Copyright © 2019 EricGolovin. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle {
    XYPoint *origin;
}

@synthesize width, height;

-(void) setOrigin:(XYPoint *)pt {
    origin = pt;
}

-(void) setWidth:(int)w addHeight:(int)h {
    width = w;
    height = h;
}

-(int) area {
    return width * height;
}

-(int) perimeter {
    return (width + height) * 2;
}

-(XYPoint *) origin {
    return origin;
}

@end
