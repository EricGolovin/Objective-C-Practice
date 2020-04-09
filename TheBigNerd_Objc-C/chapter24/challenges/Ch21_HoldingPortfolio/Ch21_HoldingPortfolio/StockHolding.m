//
//  StockHolding.m
//  Ch21_HoldingPortfolio
//
//  Created by Eric Golovin on 1/10/20.
//  Copyright © 2020 ericgolovin. All rights reserved.
//

#import "StockHolding.h"

@implementation StockHolding

-(float) valueInDollars {
    return self.currentSharePrice * self.numberOfShares;
}

-(float) costInDollars {
    return self.purchaseSharePrice * self.numberOfShares;
}

-(NSString *) description {
    NSLog(@"\nName = %@", _symbol);
    printf("Purchase price = %.0f\n", _purchaseSharePrice);
    printf("Current price = %0.f\n", _currentSharePrice);
    printf("Number of shares = %d\n", _numberOfShares);
    printf("Cost in $$ = %.0f\n", self.costInDollars);
    printf("Value in $$ = %.0f\n", self.valueInDollars);
    return [NSString stringWithFormat:@"%@: value = %.0f", _symbol, self.valueInDollars];
}

@end
