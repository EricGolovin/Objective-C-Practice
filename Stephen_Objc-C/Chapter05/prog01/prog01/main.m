//
//  main.m
//  prog01
//
//  Created by Eric Golovin on 8/31/19.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int n, triangularNumber = 0;
        
        for (n = 1; n <= 200; n = n + 1) {
            triangularNumber += n;
        }
        
        NSLog(@"the 200th triangular number is %i", triangularNumber);
        
        
    }
    return 0;
}
