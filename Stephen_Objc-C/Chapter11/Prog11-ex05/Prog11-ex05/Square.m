//
//  Square.m
//  Prog11-ex05
//
//  Created by Eric Golovin on 10/21/19.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import "Square.h"
#import "Rectangle.h"

@implementation Square {
    Rectangle *rect;
}

@synthesize side;

-(instancetype) initWithSide:(int)s {
    self = [super init];
    if (self) {
        [self setSide:s];
    }
    return self;
}

-(void) setSide:(int)s {
    side = s;
}

-(int) area {
    return side * side;
}

-(int) perimeter {
    return side * 4;
}

@end
