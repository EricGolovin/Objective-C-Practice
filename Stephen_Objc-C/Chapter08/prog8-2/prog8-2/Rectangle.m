//
//  Rectangle.m
//  prog8-2
//
//  Created by Eric Golovin on 08.10.2019.
//  Copyright © 2019 EricGolovin. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle

@synthesize width, height;

-(void) setWidth:(int)w andHeight:(int)h {
    width = w;
    height = h;
}

-(int) area {
    return width * height;
}

-(int) perimeter {
    return (width + height) * 2;
}

@end
