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
        NSMutableDictionary *executives = [[NSMutableDictionary alloc] init];
        
        for (int i = 0; i < 10; i++) {
            Employee *mikey = [Employee new];
            
            mikey.weightInKilos = 90 + i;
            mikey.heightInMeters = 1.8 - i / 10.0;
            mikey.employeeID = i;
            
            [employees addObject:mikey];
            
            if (i == 0) {
                [executives setObject:mikey forKey:@"CEO"];
            } else if (i == 1) {
                [executives setObject:mikey forKey:@"CTO"];
            }
        }
        
        NSMutableArray *allAssets = [[NSMutableArray alloc] init];
        
        for (int i = 0; i < 10; i++) {
            Asset *asset = [Asset new];
            
            NSString *currentLabel = [NSString stringWithFormat:@"Laptop %d", i];
            asset.label = currentLabel;
            asset.resaleValue = 350 + i * 17;
            
            NSUInteger randomIndex = random() % [employees count];
            
            Employee *randomEmployee = [employees objectAtIndex:randomIndex];
            
            [randomEmployee addAsset:asset];
            
            [allAssets addObject:asset];
        }
        
        NSSortDescriptor *valueOfAssestsDescriptor = [NSSortDescriptor sortDescriptorWithKey:@"valueOfAssets" ascending:YES];
        NSSortDescriptor *employeeIdDescriptor = [NSSortDescriptor sortDescriptorWithKey:@"employeeID" ascending:YES];
        [employees sortUsingDescriptors:@[valueOfAssestsDescriptor, employeeIdDescriptor]];
        
        NSLog(@"Employees: %@", employees);
        NSLog(@"Given up ownership of one employee");
        NSLog(@"Executives: %@", executives);
        NSLog(@"CEO: %@", [executives valueForKey:@"CEO"]);
        
        [employees removeObjectAtIndex:5];
        NSLog(@"allAssets: %@", allAssets);
        NSLog(@"Giving up ownership of arrays");
        
        employees = nil;
        allAssets = nil;
        executives = nil;
        
        NSPredicate *predicate = [NSPredicate predicateWithFormat:@"holder.valueOfAssets > 70"];
        NSArray *toBeReclaimed = [allAssets filteredArrayUsingPredicate:predicate];
        NSLog(@"toBeReclaimed: %@", toBeReclaimed);
        toBeReclaimed = nil;
        
        // yearsOfEmployment testing
//        NSDate *employmentDate = [NSDate dateWithTimeIntervalSince1970:20000];
//        Employee *employee = [[Employee alloc] init];
//        employee.hireDate = employmentDate;
//        NSLog(@"Years of employment: %.0f", [employee yearsOfEmployment]);
    }
//    sleep(100);
    return 0;
}
