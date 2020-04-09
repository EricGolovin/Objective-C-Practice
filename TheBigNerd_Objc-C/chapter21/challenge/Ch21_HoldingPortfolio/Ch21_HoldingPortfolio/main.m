//
//  main.m
//  Ch21_HoldingPortfolio
//
//  Created by Eric Golovin on 1/10/20.
//  Copyright © 2020 ericgolovin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ForeignStockHolding.h"
#import "Portfolio.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Portfolio *stocks = [[Portfolio alloc] init];
        
        for (int i = 0; i < 10; i++) {
            StockHolding *stock = [[StockHolding alloc] init];
            
            stock.currentSharePrice = 13 * i + 17;
            stock.numberOfShares = i * random() % 100;
            stock.purchaseSharePrice = stock.currentSharePrice * 2;
            stock.symbol = @"A";
            
            [stocks addStock:stock];
        }
        
        NSLog(@"%@", stocks);
    }
    return 0;
}
