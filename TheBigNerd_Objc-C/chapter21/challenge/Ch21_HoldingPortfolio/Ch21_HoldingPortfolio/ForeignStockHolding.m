//
//  ForeignStockHolding.m
//  Ch21_HoldingPortfolio
//
//  Created by Eric Golovin on 1/10/20.
//  Copyright © 2020 ericgolovin. All rights reserved.
//

#import "ForeignStockHolding.h"

@implementation ForeignStockHolding

-(float) costInDollars {
    double foreignCost = [super costInDollars];
    
    return foreignCost * _conversionRate;
}

-(float) valueIndDollars {
    double foreignValue = [super valueIndDollars];
    
    return foreignValue * _conversionRate;
}

@end