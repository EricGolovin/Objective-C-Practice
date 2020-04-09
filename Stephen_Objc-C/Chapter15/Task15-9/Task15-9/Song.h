//
//  Song.h
//  Task15-9
//
//  Created by Eric Golovin on 12/26/19.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Song : NSObject

@property (nonatomic, copy) NSString *name, *artist;

-(void) setName:(NSString *)name andArtist:(NSString *)artist;
-(void) printSong;

@end

NS_ASSUME_NONNULL_END
