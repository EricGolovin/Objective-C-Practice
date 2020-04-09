//
//  main.m
//  SquaRect-8_3
//
//  Created by Eric Golovin on 12/9/19.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Square.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Rectangle *aRec = [[Rectangle alloc]init];
        
        [aRec setWidth:10 andHeight:3];
        [aRec draw];
    }
    return 0;
}
