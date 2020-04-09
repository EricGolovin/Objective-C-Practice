//
//  Asset.m
//  Ch21_EmployeesAndAssets
//
//  Created by Eric Golovin on 1/8/20.
//  Copyright © 2020 ericgolovin. All rights reserved.
//

#import "Asset.h"
#import "Employee.h"

@implementation Asset

-(NSString *) description {
    if (self.holder) {
        return [NSString stringWithFormat:@"<%@: $%d, assigned to %@>", self.label, self.resaleValue, self.holder];
    } else {
        return [NSString stringWithFormat:@"<%@: $%d, unassigned>", self.label, self.resaleValue];
    }
    return [NSString stringWithFormat:@"<%@: $%u", self.label, self.resaleValue];
}

-(void) dealloc {
    NSLog(@"deallocating %@", self);
}

@end
