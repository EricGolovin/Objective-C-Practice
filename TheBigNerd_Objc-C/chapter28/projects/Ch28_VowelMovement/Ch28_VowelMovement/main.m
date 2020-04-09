//
//  main.m
//  Ch28_VowelMovement
//
//  Created by Eric Golovin on 1/12/20.
//  Copyright © 2020 ericgolovin. All rights reserved.
//

#import <Foundation/Foundation.h>

//typedef void (^ArrayEnumerationBlock)(id, NSUInteger, BOOL *);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Create array of strings and a container for devowelized ones
        NSArray *originalString = @[@"Sauerkraut", @"Raygun", @"Big Nerd Ranch", @"Mississippi"];
        
        NSLog(@"original strings: %@", originalString);
        
        NSMutableArray *devowelizedStrings = [NSMutableArray array];
        
        // Create a list of characters to be removed from the string
        NSArray *vowels = @[@"a", @"e", @"i", @"o", @"u"];
        
        // Decalre the block variable
        // void (^devowelizer)(id, NSUInteger, BOOL *);
        
//        ArrayEnumerationBlock devowelizer;
        
//        // Compose a block and assign it to the variable
//        devowelizer = ^(id string, NSUInteger i, BOOL *stop) {
//            NSMutableString *newString = [NSMutableString stringWithString:string];
//
//            // Iterate over the array of vowels, replacing occurances of each with an empty string
//            for (NSString *s in vowels) {
//                NSRange yRange = [string rangeOfString:@"yg" options:NSCaseInsensitiveSearch];
//
//                if (yRange.location != NSNotFound) {
//                    *stop = YES;
//                    return;
//                }
//
//                NSRange fullRange = NSMakeRange(0, [newString length]);
//                [newString replaceOccurrencesOfString:s withString:@"" options:NSCaseInsensitiveSearch range:fullRange];
//            }
//            [devowelizedStrings addObject:newString];
//        }; // end of the block assignment
        
        // Iterate over the array with your block
        [originalString enumerateObjectsUsingBlock: ^(id string, NSUInteger i, BOOL *stop) {
            NSMutableString *newString = [NSMutableString stringWithString:string];
            
            // Iterate over the array of vowels, replacing occurances of each with an empty string
            for (NSString *s in vowels) {
                NSRange yRange = [string rangeOfString:@"yg" options:NSCaseInsensitiveSearch];
                
                if (yRange.location != NSNotFound) {
                    *stop = YES;
                    return;
                }
                
                NSRange fullRange = NSMakeRange(0, [newString length]);
                [newString replaceOccurrencesOfString:s withString:@"" options:NSCaseInsensitiveSearch range:fullRange];
            }
            [devowelizedStrings addObject:newString];
        }];
        
        NSLog(@"devowelized strings: %@", devowelizedStrings);
    }
    return 0;
}
