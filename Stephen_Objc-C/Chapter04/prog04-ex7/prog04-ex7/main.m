//
//  main.m
//  prog04-ex7
//
//  Created by Eric Golovin on 8/29/19.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Rectangle : NSObject
-(void) setWidth:(int)w;
-(void) setHeight:(int)h;
-(int) width;
-(int) height;
-(int) area;
-(int) perimeter;
@end

@implementation Rectangle {
    int width;
    int height;
}

-(void) setWidth:(int)w {
    width = w;
}

-(void) setHeight:(int)h {
    height = h;
}

-(int) width {
    return width;
}

-(int) height {
    return height;
}

-(int) area {
    return width * height;
}

-(int) perimeter {
    return width + height;
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Rectangle *rightRectangle = [[Rectangle alloc] init];
        
        [rightRectangle setWidth:10];
        [rightRectangle setHeight:33];
        
        NSLog(@"Rectangle's width is %i and height is %i", [rightRectangle width], [rightRectangle height]);
        NSLog(@"Rectangle's area is %i and perimeter is %i", [rightRectangle area], [rightRectangle perimeter]);
    }
    return 0;
}
