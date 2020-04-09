//
//  StockHolding.m
//  Ch21_HoldingPortfolio
//
//  Created by Eric Golovin on 1/10/20.
//  Copyright © 2020 ericgolovin. All rights reserved.
//

#import "StockHolding.h"

@implementation StockHolding

-(float) costInDollars {
    return self.purchaseSharePrice * self.numberOfShares;
}

-(float) valueIndDollars {
    return self.currentSharePrice * self.numberOfShares;
}

-(NSString *) description {
    return [NSString stringWithFormat:@"%@ \n{\nPurchase price = %.0f \nCurrent price = %0.f \nNumber of shares = %d \nCost in $$ = %.0f \nValue in $$ = %.0f\n}\n", _symbol, _purchaseSharePrice, _currentSharePrice, _numberOfShares, self.costInDollars, self.valueIndDollars];
}

@end
