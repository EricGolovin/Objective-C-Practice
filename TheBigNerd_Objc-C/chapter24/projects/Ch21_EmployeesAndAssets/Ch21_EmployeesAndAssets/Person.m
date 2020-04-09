//
//  Person.m
//  Ch21_EmployeesAndAssets
//
//  Created by Eric Golovin on 1/8/20.
//  Copyright © 2020 ericgolovin. All rights reserved.
//

#import "Person.h"

@implementation Person

-(float) bodyMassIndex {
    return _weightInKilos / (_heightInMeters * _heightInMeters);
}

@end
