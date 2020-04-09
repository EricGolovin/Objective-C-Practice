//
//  main.m
//  prog02
//
//  Created by Eric Golovin on 8/31/19.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int n, triangularNumber;
        
        NSLog(@"TABLE OF TRIANGULAR NUMBER");
        NSLog(@"n Sum from 1 to n");
        NSLog(@"-- --------------");
        
        triangularNumber = 0;
        
        for (n = 1; n <= 10; n++) {
            triangularNumber += n;
            NSLog(@" %i        %i", n, triangularNumber);
        }
    }
    return 0;
}
