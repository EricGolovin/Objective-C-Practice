//
//  StockHolding.h
//  Ch21_HoldingPortfolio
//
//  Created by Eric Golovin on 1/10/20.
//  Copyright © 2020 ericgolovin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface StockHolding : NSObject

@property (nonatomic) float purchaseSharePrice, currentSharePrice;
@property (nonatomic) int numberOfShares;
@property (nonatomic) NSString *symbol;

-(float) costInDollars;
-(float) valueIndDollars;

@end

NS_ASSUME_NONNULL_END
