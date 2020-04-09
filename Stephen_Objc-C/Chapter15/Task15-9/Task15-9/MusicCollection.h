//
//  MusicCollection.h
//  Task15-9
//
//  Created by Eric Golovin on 12/26/19.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Playlist.h"

NS_ASSUME_NONNULL_BEGIN

@interface MusicCollection : NSObject

@property (nonatomic, copy) NSMutableArray *playlistsCollection;
@property (nonatomic, copy) Playlist *library;
@property (nonatomic, copy) NSString *name;

-(instancetype) initWithName:(NSString *)name;
-(instancetype) init;
-(void) addPlaylist: (Playlist *)newPlaylist;
-(void) removePlaylist: (Playlist *)oldPlaylist;
-(void) search: (NSString *)searchableName;

@end

NS_ASSUME_NONNULL_END
