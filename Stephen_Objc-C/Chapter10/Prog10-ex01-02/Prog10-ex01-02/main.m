//
//  main.m
//  Prog10-ex01-02
//
//  Created by Eric Golovin on 10/13/19.
//  Copyright © 2019 EricGolovin. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Rectangle.h"
#import "Square.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Rectangle *myRect = [[Rectangle alloc] initWithWidth:22 andHeight:33];
        Square *mySquare = [[Square alloc] initWithSide:44];
        
        printf("-----My Rect-----\nwidth = %i \nheight = %i\n", myRect.width, myRect.height);
        printf("-----My Square-----\nwidth = %i \nheight = %i\n", mySquare.width, mySquare.height);
    }
    return 0;
}
