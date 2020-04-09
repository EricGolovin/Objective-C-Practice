//
//  main.m
//  prog08-01
//
//  Created by Eric Golovin on 12.10.2019.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "ClassA.h"
#import "ClassB.h"
#import "ClassC.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ClassB *b = [[ClassB alloc] init];
        ClassC *c = [[ClassC alloc] init];
        
        [b initVar];
        [b printVar];
        
        [c initVar];
        [c printVar];
    }
    return 0;
}
