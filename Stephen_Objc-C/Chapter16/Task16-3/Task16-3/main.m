//
//  main.m
//  Task16-3
//
//  Created by Eric Golovin on 12/30/19.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSFileManager *fm = [NSFileManager defaultManager];
        NSProcessInfo *proc = [NSProcessInfo processInfo];
        NSArray *args = [proc arguments];
        
        if ([args count] == 1) {
            NSLog(@"Usage %@ argument1 ...", [proc processName]);
            return 1;
        }
        
        if ([[[args firstObject] lastPathComponent] isEqualToString:@"basename"] == YES) {
            for (NSString *fileName in args) {
                if ([fileName isEqualToString:args[0]] == NO) {
                    NSLog(@"%@", fileName);
                }
            }
        }
        
        if ([[[args firstObject] lastPathComponent] isEqualToString:@"dirname"] == YES) {
            for (NSString *fileName in args) {
                if ([fileName isEqualToString:args[0]] == NO) {
                    if ([fileName containsString:@"/"] == NO) {
                        NSLog(@".");
                    } else {
                        BOOL flag;
                        [fm fileExistsAtPath:[fileName lastPathComponent] isDirectory: &flag];
                        if (flag) {
                            [fileName stringByReplacingOccurrencesOfString:[fileName lastPathComponent] withString:@""];
                        }
                    }
                }
            }
        }
        
    }
    return 0;
}
