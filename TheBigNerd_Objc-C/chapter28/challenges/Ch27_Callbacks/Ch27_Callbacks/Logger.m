//
//  Logger.m
//  Ch27_Callbacks
//
//  Created by Eric Golovin on 1/12/20.
//  Copyright © 2020 ericgolovin. All rights reserved.
//

#import "Logger.h"

@interface Logger ()

-(void) zoneChange:(NSNotification *) note;

@end

@implementation Logger

-(NSString *) lastTimeString {
    static NSDateFormatter *dateFormatter = nil;
    if (!dateFormatter) {
        dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setTimeStyle:NSDateFormatterMediumStyle];
        [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
        NSLog(@"created dateFormatter");
    }
    return [dateFormatter stringFromDate:self.lastTime];
}

-(void) updateLastTime:(NSString *)t {
    NSDate *now = [NSDate date];
    [self setLastTime:now];
    NSLog(@"Just set time to %@", self.lastTimeString);
}

// Called each time a chunk of data arrives
-(void) connection:(NSURLConnection *)connection didReceiveData:(NSData *)data {
    NSLog(@"received %lu bytes", [data length]);
    
    // Create a mutable data if it does not already exist
    if (!_incomingData) {
        _incomingData = [[NSMutableData alloc] init];
    }
    
    [_incomingData appendData:data];
}

// Called when the last chunk has been processed
-(void) connectionDidFinishLoading:(NSURLConnection *)connection {
    NSLog(@"Got it all");
    NSString *string = [[NSString alloc] initWithData:_incomingData encoding:NSUTF8StringEncoding];
    
    _incomingData = nil;
    NSLog(@"string has %lu characters", [string length]);
    
    NSLog(@"The whole string is %@", string);
}

// Called if fetch fails
-(void) connection:(NSURLConnection *)connection didFailWithError:(NSError *)error {
    NSLog(@"connection failed: %@", [error localizedDescription]);
    _incomingData = nil;
}

-(void) zoneChange:(NSNotification *)note {
    NSLog(@"The system time zone has changed!");
}

@end
