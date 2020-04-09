//
//  main.m
//  Ch30_Stockz
//
//  Created by Eric Golovin on 1/13/20.
//  Copyright © 2020 ericgolovin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *stocks = [NSMutableArray array];
        
        NSMutableDictionary *stock;
        NSString *newString;
        NSData *newData;
        NSDate *newDate;
        
        stock = [NSMutableDictionary dictionary];
        [stock setObject:@"APPL" forKey:@"symbol"];
        [stock setObject:@200 forKey:@"shares"];
        [stocks addObject:stock];
        
        stock = [NSMutableDictionary dictionary];
        [stock setObject:@"GOOG" forKey:@"symbol"];
        [stock setObject:@160 forKey:@"shares"];
        [stocks addObject:stock];
        
        newString = @"Hello, World!";
        [stocks addObject:newString];
        
        newData = [NSData data];
        [stocks addObject:newData];
        
        newDate = [NSDate date];
        [stocks addObject:newDate];
        
        [stocks addObject:[NSNumber numberWithBool:YES]];
        [stocks addObject:[NSNumber numberWithInt:32]];
        [stocks addObject:[NSNumber numberWithFloat:2.4]];
        
        [stocks writeToFile:@"./stocks.plist" atomically:YES];
        
//        [[NSData data] writeToFile:@"./stocks.plist" atomically:YES];
        
//        NSArray *stockList = [NSArray arrayWithContentsOfFile:@"./stocks.plist"];
//
//        for (NSDictionary *d in stockList) {
//            NSLog(@"I have %@ shares of %@", [d objectForKey:@"shares"], [d objectForKey:@"symbol"]);
//        }
    }
    return 0;
}
