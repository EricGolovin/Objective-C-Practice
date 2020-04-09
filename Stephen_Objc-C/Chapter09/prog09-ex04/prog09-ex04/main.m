//
//  main.m
//  prog09-ex04
//
//  Created by Eric Golovin on 10/13/19.
//  Copyright © 2019 EricGolovin. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Fraction.h"
#import "Complex.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *fraction = [[Fraction alloc] init];
        Complex *complex = [[Complex alloc] init];
        id number = [[Complex alloc] init];
        
        if ([fraction isMemberOfClass:[Complex class]]) {
            NSLog(@"fraction isMemberOfClass [Complex class]");
        }
        if ([complex isMemberOfClass:[NSObject class]]) {
            NSLog(@"complex isMemberOfClass [NSObject class]");
        }
        if ([complex isKindOfClass:[NSObject class]]) {
            NSLog(@"complex isKindOfClass [NSObject class]");
        }
        if ([fraction isKindOfClass:[Fraction class]]) {
            NSLog(@"fraction isKindOfClass [Fraction class]");
        }
        if ([fraction respondsToSelector:@selector(print)]) {
            NSLog(@"fraction respondsToSelector @selector(print)");
        }
        if ([complex respondsToSelector:@selector(print)]) {
            NSLog(@"complex respondsToSelector @selector(print)");
        }
        if ([Fraction instancesRespondToSelector:@selector(print)]) {
            NSLog(@"Fraction instancesRespondToSelector @selector(print)");
        }
        if ([number respondsToSelector:@selector(print)]) {
            NSLog(@"number respondsToSelector @selector(print)");
        }
        if ([number isKindOfClass:[Complex class]]) {
            NSLog(@"number isKindOfClass [Complex class]");
        }
        if ([[number class] respondsToSelector: @selector(alloc)]) {
            NSLog(@"[number class] respondsToSelector @selector(alloc)");
        }
    }
    return 0;
}
