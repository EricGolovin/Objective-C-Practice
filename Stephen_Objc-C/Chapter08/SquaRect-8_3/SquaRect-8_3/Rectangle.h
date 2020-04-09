//
//  Rectangle.h
//  SquaRect-8_3
//
//  Created by Eric Golovin on 12/9/19.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Rectangle : NSObject

@property int width, height;

-(int) area;
-(int) perimeter;
-(void) setWidth:(int)w andHeight:(int)h;
-(void) draw;

@end

NS_ASSUME_NONNULL_END
