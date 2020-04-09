//
//  main.m
//  Prog10-03
//
//  Created by Eric Golovin on 10/13/19.
//  Copyright © 2019 EricGolovin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        enum month {
            january = 1,
            february,
            march,
            april,
            may,
            june,
            july,
            august,
            september,
            october,
            november,
            december
        };
        enum month amonth;
        int days;
        
        NSLog(@"Enter number of your month: ");
        scanf("%i", &amonth);
        
        switch (amonth) {
            case january:
            case march:
            case may:
            case july:
            case august:
            case october:
            case december:
                days = 31;
                break;
            case april:
            case june:
            case september:
            case november:
                days = 30;
                break;
            case february:
                days = 28;
                break;
            default:
                NSLog(@"bad month number");
                days = 0;
                break;
        }
        
        if (days != 0) {
            NSLog(@"Number of days is %i", days);
        }
        
        if (amonth == february) {
            NSLog(@"...or29 if it`s a leap year");
        }
    }
    return 0;
}

