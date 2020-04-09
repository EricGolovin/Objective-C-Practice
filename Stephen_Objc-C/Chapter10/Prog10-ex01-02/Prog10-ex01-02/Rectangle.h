//
//  Rectangle.h
//  Prog10-ex01-02
//
//  Created by Eric Golovin on 10/13/19.
//  Copyright © 2019 EricGolovin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Rectangle : NSObject

@property int width, height;

-(id) initWithWidth:(int)w andHeight:(int)h;
-(void) setWidth:(int)w andHeight:(int)h;

@end

NS_ASSUME_NONNULL_END
