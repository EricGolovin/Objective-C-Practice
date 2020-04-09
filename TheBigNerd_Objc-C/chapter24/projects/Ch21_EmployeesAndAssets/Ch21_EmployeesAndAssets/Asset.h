//
//  Asset.h
//  Ch21_EmployeesAndAssets
//
//  Created by Eric Golovin on 1/8/20.
//  Copyright © 2020 ericgolovin. All rights reserved.
//

#import "Person.h"
@class Employee;

NS_ASSUME_NONNULL_BEGIN

@interface Asset : NSObject 

@property (nonatomic, copy) NSString *label;
@property (nonatomic, weak) Employee *holder;
@property (nonatomic) unsigned int resaleValue;


@end

NS_ASSUME_NONNULL_END
