//
//  main.m
//  Task19-3
//
//  Created by Eric Golovin on 1/2/20.
//  Copyright © 2020 Eric Golovin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDictionary *fileContent;
        NSFileManager *fm = [NSFileManager defaultManager];
        NSArray *plistFiles = [fm contentsOfDirectoryAtPath:@"/Library/Preferences/" error:nil];
        
        for (NSString *file in plistFiles) {
            NSLog(@"File %@", file);
            fileContent = [NSDictionary dictionaryWithContentsOfFile:[[NSMutableString stringWithString:@"/Library/Preferences/"] stringByAppendingString: file]];
            //NSLog(@"%@", fileContent.description);
            for (NSString *key in fileContent) {
                NSLog(@"%@: %@", key, fileContent[key]);
            }
            printf("\n\n");
        }
    }
    return 0;
}
