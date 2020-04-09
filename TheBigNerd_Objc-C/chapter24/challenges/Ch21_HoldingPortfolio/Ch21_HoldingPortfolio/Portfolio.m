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
        total += [stock valueInDollars];
    }
    return total;
}

-(void) addStock: (StockHolding *)stock {
    if (!_holdings) {
        _holdings = [[NSMutableArray alloc] init];
    }
    [_holdings addObject:stock];
}

-(NSArray *) threeMostValuableHoldings {
    NSSortDescriptor *valueDescriptor = [NSSortDescriptor sortDescriptorWithKey:@"valueInDollars" ascending:NO];
    NSSortDescriptor *costDescriptor = [NSSortDescriptor sortDescriptorWithKey:@"costInDollars" ascending:YES];
    [_holdings sortUsingDescriptors:@[valueDescriptor, costDescriptor]];
    
    return [NSArray arrayWithObjects:_holdings[0], _holdings[1], _holdings[2], nil];
}

-(NSArray *) sortedAlphabeticaly {
    NSSortDescriptor *symbolDescriptor = [NSSortDescriptor sortDescriptorWithKey:@"symbol" ascending:YES];
    NSSortDescriptor *valueDescriptor = [NSSortDescriptor sortDescriptorWithKey:@"valueInDollars" ascending:NO];
    [_holdings sortUsingDescriptors:@[symbolDescriptor, valueDescriptor]];
    return _holdings;
}

-(NSString *) description {
    for (StockHolding *stock in _holdings) {
        NSLog(@"%@", stock);
    }
    return [NSString stringWithFormat:@"\n-Number of tickets: %lu \n-Total shares value: %.2f", [_holdings count], self.totalValue];
}

@end
