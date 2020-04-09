//
//  main.m
//  prog03
//
//  Created by Eric Golovin on 9/2/19.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int number;
        
        NSLog(@"Type your number");
        scanf("%i", &number);
        
        int triangularNumber = 0;
        
        for(int n = 1; triangularNumber <= number; n++) {
            triangularNumber += n;
            
            NSLog(@"Triangular number %i is %i\n", number, triangularNumber);
        }
    }
    return 0;
}
