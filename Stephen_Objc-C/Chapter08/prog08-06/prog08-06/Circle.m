//
//  Circle.m
//  prog08-06
//
//  Created by Eric Golovin on 10/12/19.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import "Circle.h"

@implementation Circle: GraphicObject

@synthesize circleDiameter;

-(void) setDiameter:(float)diameter {
    circleDiameter = diameter;
}

-(float) calculateCircum {
    return (float)(M_PI * (2 * (circleDiameter / 2)));
}

-(float) calculateArea {
    return (float)(M_PI * (pow((double)(circleDiameter / 2), 2)));
}

@end
