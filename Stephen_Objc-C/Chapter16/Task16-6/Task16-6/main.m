//
//  main.m
//  Task16-6
//
//  Created by Eric Golovin on 12/30/19.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSFileHandle *inFile, *outFile;
        NSData *buffer;
        
        char *data = (char *) malloc(11);
        data = "Hello, Eric";
        NSUInteger kBufSize = 10;
        
        // open file testfile for reading
        
        inFile = [NSFileHandle fileHandleForReadingAtPath:@"testfile"];
        
        if (inFile == nil) {
            NSLog(@"Open of testfile for reading failed");
            return 1;
        }
        
        // Create the output file if necessary
        
        [[NSFileManager defaultManager] createFileAtPath:@"testout" contents:nil attributes:nil];
        
        // Now open outfile for writing
        
        outFile = [NSFileHandle fileHandleForReadingAtPath:@"testout"];
        
        if (outFile == nil) {
            NSLog(@"Open of testout for writing failed");
            return 2;
        }
        
        // Truncate the output file since it may contain data
        
        [outFile truncateFileAtOffset:0];
        
        // Read the data from inFile and write it to outFile
        
        buffer = [inFile readDataOfLength:kBufSize];
        
        [outFile writeData:buffer];
        
        // Close the two files
        
        [inFile closeFile];
        [outFile closeFile];
        
        // Verify the file's contents
        
        NSLog(@"%@", [NSString stringWithContentsOfFile:@"testout" encoding:NSUTF8StringEncoding error:nil]);
    }
    return 0;
}
