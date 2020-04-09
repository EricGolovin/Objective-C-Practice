//
//  main.m
//  Ch17_InterstingNames
//
//  Created by Eric Golovin on 1/7/20.
//  Copyright © 2020 ericgolovin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *nameString = [NSString stringWithContentsOfFile:@"/usr/share/dict/propernames" encoding:NSUTF8StringEncoding error:NULL];
        NSString *wordString = [NSString stringWithContentsOfFile:@"/usr/share/dict/words" encoding:NSUTF8StringEncoding error:NULL];
        
        NSArray *words = [wordString componentsSeparatedByString:@"\n"];
        NSArray *names = [nameString componentsSeparatedByString:@"\n"];
        
        for (NSString *word in words) {
            if ([word length] > 0) {
                [[word substringToIndex:1] capitalizedString];
            }
            BOOL found = [names containsObject:word];
            if (found) {
                NSLog(@"%@", word);
            }
        }
    }
    return 0;
}
