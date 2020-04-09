//
//  main.m
//  Prog10-01
//
//  Created by Eric Golovin on 10/13/19.
//  Copyright © 2019 EricGolovin. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *a, *b;
        
        a = [[Fraction alloc] initWith:1 over:3];
        b = [[Fraction alloc] initWith:3 over:7];
        
        
        [a print];
        [b print];
    }
    return 0;
}
