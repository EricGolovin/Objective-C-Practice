//
//  main.m
//  Task19-1
//
//  Created by Eric Golovin on 1/2/20.
//  Copyright © 2020 Eric Golovin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int p, d;
        BOOL isPrime;
        NSMutableArray *primeNums = [NSMutableArray array];
        
        for (p = 2; p <= 10000; p++) {
            isPrime = true; // or isPrime = YES
            
            for (d = 2; d < p; d++) {
                if (p % d == 0) {
                    isPrime = false; // or isPrime = NO
                }
            }
            
            if (isPrime) {
                [primeNums addObject:[NSNumber numberWithInt:p]];
            }
        }

        [primeNums writeToFile:@"primes.pl" atomically:YES];
        
        NSMutableArray *primeNumsOpened = [NSMutableArray arrayWithContentsOfFile:@"primes.pl"];
        
        NSLog(@"%@", primeNumsOpened.description);
    }
    return 0;
}
