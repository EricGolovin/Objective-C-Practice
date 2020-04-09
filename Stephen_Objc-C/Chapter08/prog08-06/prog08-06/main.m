//
//  main.m
//  prog08-06
//
//  Created by Eric Golovin on 12.10.2019.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "XYPoint.h"
#import "Rectangle.h"
#import "Circle.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Rectangle *myRect = [[Rectangle alloc] init];
        Circle *myCircle = [[Circle alloc] init];
        XYPoint *myPoint = [[XYPoint alloc] init];
        
        [myPoint setX:100 setY:200];
        [myRect setWidth:5 addHeight:8];
        myRect.origin = myPoint;
        NSLog(@"Origin01 at (%f, %f)", myRect.origin.x, myRect.origin.y);
        NSLog(@"Rectangle w = %f, h = %f", myRect.width, myRect.height);
        NSLog(@"Area = %f, Perimeter = %f", myRect.area, myRect.perimeter);
        
        [myPoint setX:50 setY:50];
        myRect.origin = myPoint;
        NSLog(@"Origin02 at (%f, %f)", myRect.origin.x, myRect.origin.y);
        
        [myCircle setDiameter:6];
        [myCircle setFillColor:44];
        [myCircle setFilled:true];
        [myCircle setLineColor:23];
        
        NSLog(@"Diameter of myCircleDiameter = %f, fillColor = %i, filledOption = %i, lineColor = %i", myCircle.circleDiameter, [myCircle fillColor], [myCircle setFilled], [myCircle lineColor]);
        
        [myRect setWidth:30 addHeight:30];
        [myPoint setX:0 setY:0];
        [myRect setOrigin:myPoint];
        
        XYPoint *myNewPoint = [XYPoint new];
        [myNewPoint setX:20 setY:20];
    
        NSLog(@"Contains or not = %i", [myRect containsPoint:myNewPoint]);
        
    }
    return 0;
}
