//
//  Portfolio.h
//  Ch21_HoldingPortfolio
//
//  Created by Eric Golovin on 1/10/20.
//  Copyright © 2020 ericgolovin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StockHolding.h"

NS_ASSUME_NONNULL_BEGIN

@interface Portfolio : NSObject 

-(float) totalValue;
-(void) addStock: (StockHolding *)stock;
-(void) removeStock: (StockHolding *)stock;

@end

NS_ASSUME_NONNULL_END
