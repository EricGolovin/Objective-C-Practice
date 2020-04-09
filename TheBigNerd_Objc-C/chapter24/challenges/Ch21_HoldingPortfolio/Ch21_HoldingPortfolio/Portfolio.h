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

@interface Portfolio : NSObject {
    NSMutableArray *_holdings;
}

@property (nonatomic) NSArray *holdings;

-(float) totalValue;
-(void) addStock: (StockHolding *)stock;
-(NSArray *) threeMostValuableHoldings;
-(NSArray *) sortedAlphabeticaly;

@end

NS_ASSUME_NONNULL_END
