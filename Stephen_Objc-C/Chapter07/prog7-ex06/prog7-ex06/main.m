//
//  main.m
//  prog7-ex06
//
//  Created by Eric Golovin on 04.10.2019.
//  Copyright © 2019 EricGolovin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Complex.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Complex *aComplex = [Complex new];
        Complex *bComplex = [Complex new];
        Complex *resultComplex = [Complex new];
        
        [aComplex set:5.3 :7];
        [bComplex set:2.7 :4];
        
        [aComplex print];
        [bComplex print];
        
        resultComplex = [aComplex add:bComplex];
        [resultComplex print];
        
    }
    return 0;
}
