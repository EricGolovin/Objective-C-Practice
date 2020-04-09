//
//  main.m
//  Fraction-7_3
//
//  Created by Eric Golovin on 12/8/19.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *aFraction = [[Fraction alloc] init];
        Fraction *bFraction = [[Fraction alloc] init];
        
        [aFraction setTo:1 over:4];
        [bFraction setTo:1 over:2];
        
        [aFraction print];
        NSLog(@"+");
        [bFraction print];
        NSLog(@"=");
        
        [aFraction add: bFraction];
        [aFraction print];
    }
    return 0;
}
