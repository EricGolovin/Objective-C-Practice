//
//  main.m
//  Task15-9
//
//  Created by Eric Golovin on 12/26/19.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MusicCollection.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Song *song01 = [[Song alloc]init];
        [song01 setName:@"Song01" andArtist:@"artist01"];
        Song *song02 = [[Song alloc]init];
        [song02 setName:@"Song02" andArtist:@"artist02"];
        Song *song03 = [[Song alloc]init];
        [song03 setName:@"Song03" andArtist:@"artist03"];
        Song *song04 = [[Song alloc]init];
        [song04 setName:@"Song04" andArtist:@"artist04"];
        Song *song05 = [[Song alloc]init];
        [song05 setName:@"Song05" andArtist:@"artist05"];
        Song *song06 = [[Song alloc]init];
        [song06 setName:@"Song06" andArtist:@"artist06"];

        Playlist *playlist01 = [[Playlist alloc] initWithName:@"Playslist01"];
        [playlist01 addSong:song03];
        [playlist01 addSong:song04];

        Playlist *playlist02 = [[Playlist alloc] initWithName:@"Playlist02"];
        [playlist02 addSong:song05];
        [playlist02 addSong:song06];
        
        MusicCollection *myMusic = [[MusicCollection alloc] init];

        [myMusic addPlaylist:playlist01];
        [myMusic addPlaylist:playlist02];

        [myMusic.library addSong:song01];
        [myMusic.library addSong:song02];
        
        
        [myMusic.library listSongs];
        [myMusic search:@"playlist02"];
        
    }
    return 0;
}
