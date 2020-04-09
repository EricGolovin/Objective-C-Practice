//
//  main.m
//  Prog13
//
//  Created by Eric Golovin on 11/4/19.
//  Copyright © 2019 EricGolovin. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "prog13-14.h"
#import "prog13-15.h"
#import "prog13-16.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // prog 13.11
        int count = 10, x;
        int *intPtr;
        
        intPtr = &count;
        x = *intPtr;
        
        NSLog(@"count = %i, x = %i", count, x);
        
        
        // prog 13.12
        char c = 'Q';
        
        char *charPtr = &c;
        NSLog(@"%c %c", c, *charPtr);
        
        c = '/';
        NSLog(@"%c %c", c, *charPtr);
        
        *charPtr = '(';
        NSLog(@"%c %c", c, *charPtr);
        
        
        // prog 13.13
        struct date {
            int month;
            int day;
            int year;
        };
        
        struct date today, *datePtr;
        
        datePtr = &today;
        
        datePtr->month = 9;
        datePtr->day = 25;
        datePtr->year = 2014;
        
        NSLog(@"Today's date is %i/%i/%.2i.", datePtr->month, datePtr->day, datePtr->year % 100);
        
        
        // prog 13.14
        void exchange(int *pint1, int *pint2);
        
        int i1 = -5, i2 = 66, *p1 = &i1, *p2 = &i2;
        
        NSLog(@"i1 = %i, i2 = %i", i1, i2);
        
        exchange(p1, p2);
        NSLog(@"i1 = %i, i2 = %i", i1, i2);
        
//        exchange(&p1, &p2);
//        NSLog(@"i1 = %i, i2 = %i", i1, i2);
        
        
        // prog 13.15
        int arraySum(int array[], int n);
        int values[10] = {3, 7, -9, 3, 6, -1, 7, 9, 1, -5};
        
        NSLog(@"The sum is %i", arraySum(values, 10));
        
        
        // prog 13.16
        void copyString (char *to, char *from);
        char string1[] = "A string to be copied.";
        char string2[50];
        
        copyString(string2, string1);
        NSLog(@"%s", string2);
        
        copyString(string2, "So is this");
        NSLog(@"%s", string2);
    }
    return 0;
}
