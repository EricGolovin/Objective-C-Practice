//
//  main.m
//  prog08-4
//
//  Created by Eric Golovin on 09.10.2019.
//  Copyright © 2019 EricGolovin. All rights reserved.
//

#import "XYPoint.h"
#import "Rectangle.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Rectangle *myRect = [[Rectangle alloc] init];
        XYPoint *myPoint = [[XYPoint alloc] init];
        
        [myPoint setX:100 setY:200];
        
        [myRect setWidth:5 addHeight:8];
        myRect.origin = myPoint;
        
        NSLog(@"Rectangle w = %i, h = %i", myRect.width, myRect.height);
        NSLog(@"Origin at (%i, %i)", myRect.origin.x, myRect.origin.y);
        NSLog(@"Area = %i, Perimeter = %i", myRect.area, myRect.perimeter);
        
    }
    return 0;
}
