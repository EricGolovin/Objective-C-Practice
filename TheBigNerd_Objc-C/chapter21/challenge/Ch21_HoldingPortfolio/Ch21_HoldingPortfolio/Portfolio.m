//
//  Portfolio.m
//  Ch21_HoldingPortfolio
//
//  Created by Eric Golovin on 1/10/20.
//  Copyright © 2020 ericgolovin. All rights reserved.
//

#import "Portfolio.h"

@implementation Portfolio

-(float) totalValue {
    float total = 0;
    for (StockHolding *stock in _holdings) {
        total += [stock valueIndDollars];
    }
    return total;
}

-(void) addStock: (StockHolding *)stock {
    if (!_holdings) {
        _holdings = [[NSMutableArray alloc] init];
    }
    [_holdings addObject:stock];
}

-(NSString *) description {
    for (StockHolding *stock in _holdings) {
        NSLog(@"%@", stock);
    }
    return [NSString stringWithFormat:@"\n-Number of tickets: %lu \n-Total shares value: %.2f", [_holdings count], self.totalValue];
}

@end
