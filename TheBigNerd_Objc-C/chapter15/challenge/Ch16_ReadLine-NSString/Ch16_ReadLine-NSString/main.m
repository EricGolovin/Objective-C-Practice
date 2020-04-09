//
//  main.m
//  Ch16_ReadLine-NSString
//
//  Created by Eric Golovin on 1/7/20.
//  Copyright © 2020 ericgolovin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        const char *name = "Hello, World";
        
        NSString *phrase = [NSString stringWithUTF8String:name];
        
        NSLog(@"%@", phrase);
    }
    return 0;
}
