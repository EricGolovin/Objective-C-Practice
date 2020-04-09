//
//  ForeignStockHolding.h
//  Ch21_HoldingPortfolio
//
//  Created by Eric Golovin on 1/10/20.
//  Copyright © 2020 ericgolovin. All rights reserved.
//

#import "StockHolding.h"

NS_ASSUME_NONNULL_BEGIN

@interface ForeignStockHolding : StockHolding

@property (nonatomic) float conversionRate;

@end

NS_ASSUME_NONNULL_END
