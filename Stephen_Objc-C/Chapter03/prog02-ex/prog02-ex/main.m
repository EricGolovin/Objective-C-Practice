//
//  main.m
//  prog02-ex
//
//  Created by Eric Golovin on 8/28/19.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import <Foundation/Foundation.h>

// ---- @interface ----

@interface Printer : NSObject
-(void) fillIn;
-(void) setColor:(int)b;
-(void) setPages:(int)p;
-(int) getTime;
-(int) getPages;
@end

@interface XYPoints : NSObject
-(void) setY:(int)v;
-(void) setX:(int)v;
-(int) getY;
-(int) getX;
@end

// ---- @@implementation ----

@implementation Printer {
    int blackColor;
    int pages;
}

-(void) fillIn {
    blackColor = 100;
}

-(void) setColor:(int)b {
    blackColor = b;
}

-(void) setPages:(int)p {
    pages = p;
}

-(int) getTime {
    return pages / blackColor / 2;
}

-(int) getPages {
    return pages;
}

@end

@implementation XYPoints {
    int x;
    int y;
}

-(void) setY:(int)v {
    y = v;
}

-(void) setX:(int)v {
    x = v;
}

-(int) getX {
    return x;
}

-(int) getY {
    return y;
}

@end

// ---- program section ----

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // Printer running
        Printer *homePrinter = [[Printer alloc] init];
        
        [homePrinter fillIn];
        [homePrinter setColor:30];
        [homePrinter setPages:100];
        
        NSLog(@"It would take %i minutes to print %i pages.", [homePrinter getTime], [homePrinter getPages]);
        
        // Carterian coordinate running
        XYPoints *coordinatesXY = [XYPoints new];
        
        [coordinatesXY setX:22];
        [coordinatesXY setY:33];
        
        NSLog(@"X value is %i and Y value is %i", [coordinatesXY getX], [coordinatesXY getY]);
    }
    return 0;
}
