//
//  main.m
//  Task16-1
//
//  Created by Eric Golovin on 12/30/19.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSFileManager *fm;
        NSString *dest;
        NSMutableArray *sourceS = [NSMutableArray array];
        BOOL isDir;
        NSProcessInfo *proc = [NSProcessInfo processInfo];
        NSArray *args = [proc arguments];
        
        fm = [NSFileManager defaultManager];
        
        // Check for two arguments on the command line
        
        if ([args count] < 3) {
            NSLog(@"Usage: %@ src dest", [proc processName]);
            return 1;
        }
        
        for (NSString *fileName in args) {
            if ([fileName isEqualToString:[args firstObject]] == NO && [fileName isEqualToString:[args lastObject]] == NO) {
                [sourceS addObject:fileName];
                NSLog(@"Added %@ to sourceS", fileName);
            }
        }
        
        
        for (NSString *file in sourceS) {
            dest = [args lastObject];
            
            // Make sure the source files can be read
            
            if ([fm isReadableFileAtPath:file] == NO) {
                NSLog(@"Cannot read %@", file);
                return 2;
            }
            
            // See if the destination file is a directory
            // if it is, add the source to the end of the destination
            
            [fm fileExistsAtPath:dest isDirectory:&isDir];
            
            if (isDir == YES) {
                dest = [dest stringByAppendingFormat:@"%@", [file lastPathComponent]];
                NSLog(@"dest = %@", dest);
            }
            
            // Remove the destination file if it already exists
            
            [fm removeItemAtPath:dest error:NULL];
            
            // Okay, time to perform the copy
            
            if ([fm copyItemAtPath:file toPath:dest error:NULL] == NO) {
                NSLog(@"Copy failed");
                return 3;
            }
            
            NSLog(@"Copy of %@ to %@ succeded!", file, dest);
        }
    }
    return 0;
}
