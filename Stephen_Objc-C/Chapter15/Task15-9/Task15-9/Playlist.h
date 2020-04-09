//
//  Playlist.h
//  Task15-9
//
//  Created by Eric Golovin on 12/26/19.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Song.h"


NS_ASSUME_NONNULL_BEGIN

@interface Playlist : NSObject

@property (nonatomic, copy) NSString *collectionName;
@property (nonatomic, strong) NSMutableArray *songsCollection;

-(instancetype) initWithName:(NSString *)name;
-(void) addSong: (Song *) newSong;
-(void) removeSong: (Song *) oldSong;
-(void) listSongs;

@end

NS_ASSUME_NONNULL_END
