//
//  main.m
//  prog06-ex01
//
//  Created by Eric Golovin on 9/3/19.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int triangularNumber, n;
        
        for (n = 10; n != 2; n--) {
            triangularNumber = n * (n + 1) / 2;
            NSLog(@"%i", triangularNumber);
        }
    }
    return 0;
}
