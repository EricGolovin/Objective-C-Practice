//
//  Rectangle.m
//  Prog11-ex05
//
//  Created by Eric Golovin on 10/21/19.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle

@synthesize width, height;

-(id) initWithWidth:(double)w andHeight:(double)h {
    self = [super init];
    
    if (self) {
        [self setWidth:w andHeight:h];
    }
    return self;
}

-(void) setWidth:(double)w andHeight:(double)h {
    width = w;
    height = h;
}

@end
