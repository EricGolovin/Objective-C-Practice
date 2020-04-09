//
//  main.m
//  prog06-ex02
//
//  Created by Eric Golovin on 9/3/19.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int n, factorialN = 1;
        
        for (n = 5; n != 0; n--) {
            factorialN *= n;
            NSLog(@"%i", n);
        }
        
        NSLog(@"%i %i", n, factorialN);
        NSLog(@"%-2i %i", n, factorialN);
    }
    return 0;
}
