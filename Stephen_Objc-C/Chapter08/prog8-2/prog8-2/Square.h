//
//  Square.h
//  prog8-2
//
//  Created by Eric Golovin on 08.10.2019.
//  Copyright © 2019 EricGolovin. All rights reserved.
//

#import "Rectangle.h"

NS_ASSUME_NONNULL_BEGIN

@interface Square : Rectangle

-(void) setSide: (int)s;
-(int) side;

@end

NS_ASSUME_NONNULL_END
