//
//  Square.h
//  Prog11-ex05
//
//  Created by Eric Golovin on 10/21/19.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Square : NSObject

@property (nonatomic) int side;

-(instancetype) initWithSide:(int)s;
-(void) setSide:(int)s;
-(int) side;
-(int) area;
-(int) perimeter;

@end

NS_ASSUME_NONNULL_END
