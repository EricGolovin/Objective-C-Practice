//
//  main.m
//  Prog11-1
//
//  Created by Eric Golovin on 10/18/19.
//  Copyright © 2019 EricGolovin. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *frac1 = [[Fraction alloc]init];
        Fraction *frac2 = [[Fraction alloc]init];
        Fraction *frac3 = [[Fraction alloc]init];
        
        [frac1 setTo:1 over:2];
        [frac2 setTo:1 over:1];
        [frac3 setTo:5 over:11];
        
        NSMutableArray *fractions = [NSMutableArray arrayWithObjects:frac1, frac2, frac3, nil];
        
//        NSLog(@"Displayed using regular loop:");
//        for (int i = 0; i < fractions.count; i++) {
//            [fractions[i] print];
//        }
    
        NSLog(@"Displayed using fast enumeration:");
        for (id object in fractions) {
            [object print];
        }
        
//        NSLog(@"Displayed using reluar @");
//        [fractions[0] print];
        
        [fractions sortUsingSelector:@selector(compareFraction:)];
        for (id object in fractions) {
            [object print];
        }
        
    }
    return 0;
}
