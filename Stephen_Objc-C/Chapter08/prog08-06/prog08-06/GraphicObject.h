//
//  GraphicObject.h
//  prog08-06
//
//  Created by Eric Golovin on 10/12/19.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface GraphicObject : NSObject {
    int fillColor, lineColor;
    BOOL filled;
}

-(void) setFillColor: (int)color;
-(void) setFilled: (BOOL)filledOption;
-(void) setLineColor: (int) color;

-(int) fillColor;
-(BOOL) setFilled;
-(int) lineColor;

@end

NS_ASSUME_NONNULL_END
