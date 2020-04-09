//
//  Rectangle.m
//  prog08-ex08
//
//  Created by Eric Golovin on 10/12/19.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle

@synthesize width, height;

-(void) setWidth:(double)width setHeight:(double)height {
    self.width = width;
    self.height = height;
}

-(void) draw {
    if (height && width) {
        for (int i = 1; i <= width; i++) {
            printf("-");
        }
        printf("\n");
        for (int i = 1; i <= height; i++) {
            printf("|");
            for (int i = 1; i <= width - 2; i++) {
                printf(" ");
            }
            printf("|\n");
        }
        for (int i = 1; i <= width; i++) {
            printf("-");
        }
        printf("\n");
    }
}

@end
