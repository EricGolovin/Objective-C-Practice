//
//  GraphicObject.m
//  prog08-06
//
//  Created by Eric Golovin on 10/12/19.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import "GraphicObject.h"

@implementation GraphicObject

-(void) setFillColor:(int)color {
    fillColor = color;
}

-(int) fillColor {
    return fillColor;
}

-(void) setFilled:(BOOL)filledOption {
    filled = filledOption;
}

-(BOOL) setFilled {
    return filled;
}

-(void) setLineColor:(int)color {
    lineColor = color;
}

-(int) lineColor {
    return lineColor;
}

@end
