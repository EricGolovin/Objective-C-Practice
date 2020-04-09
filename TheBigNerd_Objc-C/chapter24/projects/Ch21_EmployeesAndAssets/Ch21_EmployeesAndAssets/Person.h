//
//  Person.h
//  Ch21_EmployeesAndAssets
//
//  Created by Eric Golovin on 1/8/20.
//  Copyright © 2020 ericgolovin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject

@property (nonatomic) float heightInMeters, weightInKilos;

-(float) bodyMassIndex;

@end

NS_ASSUME_NONNULL_END
