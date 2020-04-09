//
//  main.m
//  Ch21_EmployeesAndAssets
//
//  Created by Eric Golovin on 1/8/20.
//  Copyright © 2020 ericgolovin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"
#import "Asset.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *employees = [[NSMutableArray alloc] init];
        
        for (int i = 0; i < 10; i++) {
            Employee *mikey = [Employee new];
            
            mikey.weightInKilos = 90 + i;
            mikey.heightInMeters = 1.8 - i / 10.0;
            mikey.employeeID = i;
            
            [employees addObject:mikey];
        }
        
        for (int i = 0; i < 10; i++) {
            Asset *asset = [Asset new];
            
            NSString *currentLabel = [NSString stringWithFormat:@"Laptop %d", i];
            asset.label = currentLabel;
            asset.resaleValue = 350 + i * 17;
            
            NSUInteger randomIndex = random() % [employees count];
            
            Employee *randomEmployee = [employees objectAtIndex:randomIndex];
            
            [randomEmployee addAsset:asset];
        }
        
        NSLog(@"Employees: %@", employees);
        NSLog(@"Given up ownership of one employee");
        [employees removeObjectAtIndex:5];
        NSLog(@"Giving up ownership of arrays");
        employees = nil;
        
        // yearsOfEmployment testing
        NSDate *employmentDate = [NSDate dateWithTimeIntervalSince1970:20000];
        Employee *employee = [[Employee alloc] init];
        employee.hireDate = employmentDate;
        NSLog(@"Years of employment: %.0f", [employee yearsOfEmployment]);
    }
    return 0;
}
