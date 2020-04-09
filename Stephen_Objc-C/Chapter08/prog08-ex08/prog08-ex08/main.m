//
//  main.m
//  prog08-ex08
//
//  Created by Eric Golovin on 10/12/19.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Rectangle.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Rectangle *myRect = [Rectangle new];
        
        [myRect setWidth:10 setHeight:5];
        [myRect draw];
    }
    return 0;
}
