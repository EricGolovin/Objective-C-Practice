//
//  main.m
//  Prog11-ex05
//
//  Created by Eric Golovin on 10/21/19.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Rectangle.h"
#import "Square.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Square *mySquare = [[Square alloc] initWithSide:4];
        NSLog(@"area of mySquare = %i", [mySquare area]);
    }
    return 0;
}
