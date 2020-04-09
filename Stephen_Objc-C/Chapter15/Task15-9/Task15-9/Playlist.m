//
//  Playlist.m
//  Task15-9
//
//  Created by Eric Golovin on 12/26/19.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import "Playlist.h"
#import "Song.h"

@implementation Playlist

@synthesize songsCollection, collectionName;

-(instancetype) initWithName:(NSString *)name {
    self = [super init];
    
    if (self) {
        self.collectionName = name;
        songsCollection = [[NSMutableArray alloc] init];
    }
    return self;
}

-(instancetype) init {
    return [self initWithName:@"NoName"];
}

-(void) addSong:(Song *)newSong {
    [songsCollection addObject:newSong];
}

-(void) removeSong:(Song *)oldSong {
    [songsCollection removeObjectIdenticalTo:oldSong];
}

-(void) listSongs {
    NSLog(@"Playlist %@ contains %lu songs", collectionName, (unsigned long)[songsCollection count]);
    [songsCollection sortUsingComparator:^(id obj1, id obj2) {
        return [[obj1 name] compare:[obj2 name]];
    }];
    for (Song *track in songsCollection) {
        [track printSong];
    }
}

@end
