//
//  main.m
//  prog02-ex05
//
//  Created by Eric Golovin on 9/3/19.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int n, number, triangularNumber, counter;
        
        for (counter = 1; counter <= 5; counter++) {
            NSLog(@"What triangular number do you want?");
            scanf("%i", &triangularNumber);
            
            for (n = 1; n <= triangularNumber; n++) {
                number += n;
            }
            
            NSLog(@"Triangular number %i is %i", number, triangularNumber);
        }
    }
    return 0;
}
