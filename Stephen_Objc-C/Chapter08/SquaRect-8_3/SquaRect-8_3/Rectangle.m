//
//  Rectangle.m
//  SquaRect-8_3
//
//  Created by Eric Golovin on 12/9/19.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle

@synthesize width, height;

-(void) setWidth:(int)w andHeight:(int)h {
    width = w;
    height = h;
}

-(int) area {
    return width * height;
}

-(int) perimeter {
    return (width + height) * 2;
}

-(void) draw {
    for (int i = 0; i < width; i++) {
        printf("-");
    }
    printf("\n");
    for (int i = 0; i < height; i++) {
        printf("|");
        for (int i = 0; i < width - 2; i++) {
            printf(" ");
        }
        printf("|\n");
    }
    for (int i = 0; i < width; i++) {
        printf("-");
    }
    printf("\n");
}

@end
