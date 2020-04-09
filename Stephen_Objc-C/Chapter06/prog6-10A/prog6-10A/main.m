//
//  main.m
//  prog6-10A
//
//  Created by Eric Golovin on 9/12/19.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int p, d;
        BOOL isPrime;
        
        for (p = 2; p <= 50; p++) {
            isPrime = true; // or isPrime = YES
            
            for (d = 2; d < p; d++) {
                if (p % d == 0) {
                    isPrime = false; // or isPrime = NO
                }
            }
            
            if (isPrime) {
                NSLog(@"%i", p);
            }
        }
    }
    return 0;
}
