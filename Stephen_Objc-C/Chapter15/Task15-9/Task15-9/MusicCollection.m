//
//  MusicCollection.m
//  Task15-9
//
//  Created by Eric Golovin on 12/26/19.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import "MusicCollection.h"

@implementation MusicCollection

@synthesize playlistsCollection, library, name;

-(instancetype) initWithName:(NSString *)name {
    self = [super init];
    
    if (self) {
        self.name = name;
        playlistsCollection = [NSMutableArray array];
        library = [[Playlist alloc] initWithName:@"Library"];
    }
    
    return self;
}

-(instancetype) init {
    return [self initWithName:@"NoName"];
}

-(void) addPlaylist:(Playlist *)newPlaylist {
    for (Song *track in [newPlaylist songsCollection]) {
        [library addSong:track];
    }
    [playlistsCollection addObject:newPlaylist];
}

-(void) removePlaylist:(Playlist *)oldPlaylist {
    
    if ([playlistsCollection containsObject:oldPlaylist]) {
        for (Song *trackRemove in [oldPlaylist songsCollection]) {
            [library.songsCollection removeObjectIdenticalTo:trackRemove];
        }
    }
    [playlistsCollection removeObjectIdenticalTo:oldPlaylist];
}

-(void) search:(NSString *)searchableName {
    NSLog(@"Search result of |%@|:", searchableName);
    for (Song *track in library.songsCollection) {
        if ([[[track name] lowercaseString] containsString:[searchableName lowercaseString]]) {
            [track printSong];
            return;
        }
    }
    
    for (Playlist *playlist in playlistsCollection) {
        if ([[[playlist collectionName] lowercaseString] containsString:[searchableName lowercaseString]]) {
            [playlist listSongs];
            return;
        }
    }
    
    NSLog(@"%@ file cannot be found", searchableName);
}

@end
