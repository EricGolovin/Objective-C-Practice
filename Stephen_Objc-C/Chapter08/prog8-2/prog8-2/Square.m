//
//  Square.m
//  prog8-2
//
//  Created by Eric Golovin on 08.10.2019.
//  Copyright © 2019 EricGolovin. All rights reserved.
//

#import "Square.h"

@implementation Square

-(void) setSide:(int)s {
    [self setWidth:s andHeight:s];
}

-(int) side {
    return self.width;
}

@end
