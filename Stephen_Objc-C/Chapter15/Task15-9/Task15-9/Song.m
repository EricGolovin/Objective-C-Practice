//
//  Song.m
//  Task15-9
//
//  Created by Eric Golovin on 12/26/19.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import "Song.h"

@implementation Song

@synthesize name, artist;

-(void) setName:(NSString *)name andArtist:(NSString *)artist {
    self.name = name;
    self.artist = artist;
}

-(void) printSong {
    NSLog(@"Song %@ by %@", name, artist);
}

@end
