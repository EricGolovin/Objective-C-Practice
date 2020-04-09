//
//  main.m
//  Ch13_Host
//
//  Created by Eric Golovin on 1/6/20.
//  Copyright © 2020 ericgolovin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSHost *host = [NSHost currentHost];
        NSString *myHost = [host localizedName];
        
        NSLog(@"%@", myHost);
    }
    return 0;
}
