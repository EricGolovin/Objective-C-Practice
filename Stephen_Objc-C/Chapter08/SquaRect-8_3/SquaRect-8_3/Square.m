//
//  Square.m
//  SquaRect-8_3
//
//  Created by Eric Golovin on 12/9/19.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import "Square.h"

@implementation Square: Rectangle

-(void) setSide:(int)s {
    [self setWidth:s andHeight:s];
}

-(int) side {
    return self.width;
}

@end
