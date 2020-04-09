//
//  Circle.h
//  prog08-06
//
//  Created by Eric Golovin on 10/12/19.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import "GraphicObject.h"

NS_ASSUME_NONNULL_BEGIN

@interface Circle : GraphicObject

@property float circleDiameter;

-(void) setDiameter: (float)diameter;

-(float) calculateCircum;
-(float) calculateArea;

@end

NS_ASSUME_NONNULL_END
