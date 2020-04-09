//
//  Employee.m
//  Ch21_EmployeesAndAssets
//
//  Created by Eric Golovin on 1/8/20.
//  Copyright © 2020 ericgolovin. All rights reserved.
//

#import "Employee.h"
#import "Asset.h"

@implementation Employee

-(void) setAssets:(NSArray *)a {
    _assets = [a mutableCopy];
}

-(NSArray *) assets {
    return [_assets copy];
}

-(void) addAsset:(Asset *)a {
    if (!_assets) {
        _assets = [[NSMutableArray alloc] init];
    }
    [_assets addObject:a];
}

-(void) removeAsset:(Asset *)a {
    if (_assets) {
        [_assets removeObjectIdenticalTo:a];
    }
}

-(unsigned int) valueOfAssets {
    unsigned int sum = 0;
    for (Asset *a in _assets) {
        sum += [a resaleValue];
    }
    return sum;
}

-(double) yearsOfEmployment {
    NSDate *todayDate = [NSDate date];
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *components = [calendar components:NSCalendarUnitYear fromDate:self.hireDate toDate:todayDate options:NSCalendarMatchStrictly];
    return (double)[components year];
}


-(NSString *) description {
    return [NSString stringWithFormat:@"<Employee %u: $%u in assets>", self.employeeID, self.valueOfAssets];
}

-(void) dealloc {
    NSLog(@"deallocating %@", self);
}

@end
