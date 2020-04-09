//
//  Rectangle.h
//  prog8-2
//
//  Created by Eric Golovin on 08.10.2019.
//  Copyright © 2019 EricGolovin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Rectangle : NSObject

@property int width, height;

-(int) area;
-(int) perimeter;

-(void) setWidth: (int)w andHeight: (int)h;

@end

NS_ASSUME_NONNULL_END
