//
//  main.m
//  prog7-4
//
//  Created by Eric Golovin on 9/25/19.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *aFraction = [[Fraction alloc] init];
        Fraction *bFraction = [[Fraction alloc] init];
        
        Fraction *resultFraction;
        
        [aFraction setTo:1 over:4]; // set to 1/4
        [bFraction setTo:1 over:2]; // set to 1/2
        
        [aFraction print:false];
        NSLog(@"+");
        [bFraction print:false];
        NSLog(@"=");
        resultFraction = [aFraction add:bFraction];
        [resultFraction print:true];
        
        
        [aFraction setTo:1 over:4]; // set to 1/4
        [bFraction setTo:1 over:2]; // set to 1/2
        [aFraction print:false];
        NSLog(@"-");
        [bFraction print:false];
        NSLog(@"=");
        resultFraction = [aFraction substract:bFraction];
        [resultFraction print:true];
        
        
        [aFraction setTo:1 over:4]; // set to 1/4
        [bFraction setTo:1 over:2]; // set to 1/2
        [aFraction print:false];
        NSLog(@"*");
        [bFraction print:false];
        NSLog(@"=");
        resultFraction = [aFraction multiply:bFraction];
        [resultFraction print:true];
        
        
        [aFraction setTo:1 over:4]; // set to 1/4
        [bFraction setTo:1 over:2]; // set to 1/2
        [aFraction print:false];
        NSLog(@"/");
        [bFraction print:false];
        NSLog(@"=");
        resultFraction = [aFraction divide:bFraction];
        [resultFraction print:true];
        
        [aFraction setTo:5 over:3];
        [aFraction print:false];
    }
    return 0;
}
