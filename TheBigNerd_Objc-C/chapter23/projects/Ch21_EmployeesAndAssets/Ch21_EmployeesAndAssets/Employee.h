//
//  Employee.h
//  Ch21_EmployeesAndAssets
//
//  Created by Eric Golovin on 1/8/20.
//  Copyright © 2020 ericgolovin. All rights reserved.
//

#import "Person.h"
@class Asset;

NS_ASSUME_NONNULL_BEGIN

@interface Employee : Person 

@property (nonatomic) unsigned int employeeID;
@property (nonatomic) NSDate *hireDate;
//@property (nonatomic) NSString *lastName;
//@property (nonatomic) Person *spouse;
//@property (nonatomic) NSMutableArray *children;
@property (nonatomic, copy) NSArray *assets;

-(double) yearsOfEmployment;
-(void) addAsset:(Asset *)a;
-(void) removeAsset:(Asset *)a;
-(unsigned int) valueOfAssets;

@end

NS_ASSUME_NONNULL_END
