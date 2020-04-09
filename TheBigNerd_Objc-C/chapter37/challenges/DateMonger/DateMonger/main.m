//
//  main.m
//  DateMonger
//
//  Created by Eric Golovin on 1/18/20.
//  Copyright © 2020 ericgolovin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSDate+DateMonger.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSDate *birthDate = [NSDate dateFromDay:4 andMonth:6 andYear:2002];
        
        NSLog(@"%@", birthDate);
        
    }
    return 0;
}
