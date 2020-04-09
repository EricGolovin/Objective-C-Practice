//
//  main.m
//  prog05
//
//  Created by Eric Golovin on 9/3/19.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        unsigned int u, v, temp;
        
        NSLog(@"Please type in two nonnegative integers.");
        scanf("%u%u", &u, &v);
        
        while (v != 0) {
            temp = u % v;
            u = v;
            v = temp;
        }
        
        NSLog(@"Their greatest common divisor is %u", u);
        
    }
    return 0;
}
