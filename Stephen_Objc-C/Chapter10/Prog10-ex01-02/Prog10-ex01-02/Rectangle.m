//
//  Rectangle.m
//  Prog10-ex01-02
//
//  Created by Eric Golovin on 10/13/19.
//  Copyright © 2019 EricGolovin. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle

@synthesize width, height;

-(id) initWithWidth:(int)w andHeight:(int)h {
    self = [super init];
    if (self) {
        [self setWidth:w andHeight:h];
    }
    return self;
}

-(void) setWidth:(int)w andHeight:(int)h {
    width = w;
    height = h;
}

@end
