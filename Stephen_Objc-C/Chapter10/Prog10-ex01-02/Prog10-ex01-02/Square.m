//
//  Square.m
//  Prog10-ex01-02
//
//  Created by Eric Golovin on 10/13/19.
//  Copyright © 2019 EricGolovin. All rights reserved.
//

#import "Square.h"

@implementation Square

-(id) initWithSide:(int)side {
    self = [super init];
    
    if (self) {
        [self setWidth:side andHeight:side];
    }
    
    return self;
}

@end
