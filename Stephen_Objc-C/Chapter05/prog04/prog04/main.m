//
//  main.m
//  prog04
//
//  Created by Eric Golovin on 9/2/19.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int n, number, triangularNumber, counter;
        
        for (counter = 1; counter <= 5; counter++) {
            NSLog(@"What triangular number do you want?");
            scanf("%i", &number);
            
            triangularNumber = 0;
            
            for (n = 1; n <= number; n++) {
                triangularNumber += n;
            }
            
            NSLog(@"Triangular number %i is %i", number, triangularNumber);
        }
    }
    return 0;
}
