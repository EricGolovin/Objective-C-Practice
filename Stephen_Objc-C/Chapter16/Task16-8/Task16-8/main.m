//
//  main.m
//  Task16-8
//
//  Created by Eric Golovin on 12/30/19.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSURL *myURL = [NSURL URLWithString:@"file:///Users/ericgolovin/Developer/states.plist"];
        NSMutableDictionary *dataDictionary = [NSMutableDictionary dictionaryWithContentsOfURL:myURL];
        
        NSLog(@"Content of the URL file:");
        NSLog(@"%@", [dataDictionary description]);
//        for (id key in dataDictionary) {
//            NSLog(@"%@ = %@", key, [dataDictionary valueForKey:key]);
//        }
        
        
    }
    return 0;
}
