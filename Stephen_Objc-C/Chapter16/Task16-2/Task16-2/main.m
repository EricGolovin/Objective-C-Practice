//
//  main.m
//  Task16-2
//
//  Created by Eric Golovin on 12/30/19.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSFileManager *fm = [NSFileManager defaultManager];
        NSProcessInfo *proc = [NSProcessInfo processInfo];
        NSArray *argc = [proc arguments];
        NSDirectoryEnumerator *dirEnum;
        NSString *buff = [NSString string];
        
        dirEnum = [fm enumeratorAtPath:argc[1]];
        
        if ([argc count] != 3) {
            NSLog(@"Usage %@ directory src", [proc processName]);
            return 1;
        }
        
        while ((buff = [dirEnum nextObject]) != nil) {
            if ([[buff lastPathComponent] isEqualToString:argc[2]]) {
                NSLog(@"%@/%@", argc[1], buff);
                break;
            }
        }
        
        
    }
    return 0;
}
