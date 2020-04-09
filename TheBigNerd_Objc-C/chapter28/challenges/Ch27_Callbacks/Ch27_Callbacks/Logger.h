//
//  Logger.h
//  Ch27_Callbacks
//
//  Created by Eric Golovin on 1/12/20.
//  Copyright © 2020 ericgolovin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Logger : NSObject <NSURLConnectionDelegate, NSURLConnectionDataDelegate> {
    NSMutableData *_incomingData;
}

@property (nonatomic) NSDate *lastTime;

-(NSString *) lastTimeString;
-(void) updateLastTime:(NSString *)t;

-(void) connection:(NSURLConnection *)connection didReceiveData:(NSData *)data;
-(void) connectionDidFinishLoading:(NSURLConnection *)connection;

-(void) connection:(NSURLConnection *)connection didFailWithError:(NSError *)error;

@end

NS_ASSUME_NONNULL_END
