//
//  main.m
//  Task16-7
//
//  Created by Eric Golovin on 12/30/19.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSFileHandle *inFile, *outFile;
        NSData *buffer;
        
        NSProcessInfo *proc = [NSProcessInfo processInfo];
        NSArray *args = [proc arguments];
        
        
        inFile = [NSFileHandle fileHandleForReadingAtPath:[args objectAtIndex:1]];
        
        if (inFile == nil) {
            NSLog(@"Open of inFile for reading failed");
            return 1;
        }
        
        buffer = [inFile readDataOfLength:125];
        
        outFile = [NSFileHandle fileHandleWithStandardOutput];
        
        [outFile writeData:buffer];
    }
    return 0;
}
