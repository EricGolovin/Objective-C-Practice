//
//  main.m
//  Ch27_Callbacks
//
//  Created by Eric Golovin on 1/12/20.
//  Copyright © 2020 ericgolovin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Logger.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Logger *logger = [[Logger alloc] init];
        
//        changed | [[NSNotificationCenter defaultCenter] addObserver:logger selector:@selector(zoneChange:) name:NSSystemTimeZoneDidChangeNotification object:nil]; | to ==>
        
        [[NSNotificationCenter defaultCenter] addObserverForName:NSSystemTimeZoneDidChangeNotification object:nil queue:nil usingBlock:^(NSNotification *note) {
            NSLog(@"The system time zone has changed!");
        }];
        
        NSURL *url = [NSURL URLWithString:@"http://www.gutenberg.org/cache/epub/205/pg205.txt"];
        
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        
        __unused NSURLConnection *fetchConn = [[NSURLConnection alloc] initWithRequest:request delegate:logger startImmediately:YES];
        
        __unused NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:2.0 target:logger selector:@selector(updateLastTime:) userInfo:nil repeats:YES];
        
        [[NSRunLoop currentRunLoop] run];
    }
    return 0;
}
