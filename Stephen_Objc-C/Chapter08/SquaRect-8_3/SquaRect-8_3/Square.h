//
//  Square.h
//  SquaRect-8_3
//
//  Created by Eric Golovin on 12/9/19.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import "Rectangle.h"

NS_ASSUME_NONNULL_BEGIN

@interface Square : Rectangle

-(void) setSide:(int)s;
-(int) side;

@end

NS_ASSUME_NONNULL_END
