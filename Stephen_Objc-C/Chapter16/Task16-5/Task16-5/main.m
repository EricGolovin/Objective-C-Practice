//
//  main.m
//  Task16-5
//
//  Created by Eric Golovin on 12/30/19.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "NSString+TempFiles.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *name = [NSString string];
        name = [name temporaryFileName];
        NSLog(@"%@", name);
    }
    return 0;
}
