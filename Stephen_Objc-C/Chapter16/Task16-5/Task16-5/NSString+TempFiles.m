//
//  NSString+TempFiles.m
//  Task16-5
//
//  Created by Eric Golovin on 12/30/19.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import "NSString+TempFiles.h"

#import <AppKit/AppKit.h>


@implementation NSString (TempFiles)

-(NSString *) temporaryFileName {
    NSString *uniqueName = [[NSProcessInfo processInfo] globallyUniqueString];
    
    return uniqueName;
}

@end
