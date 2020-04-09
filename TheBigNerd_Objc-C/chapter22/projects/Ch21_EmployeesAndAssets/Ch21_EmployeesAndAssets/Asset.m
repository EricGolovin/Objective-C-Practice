//
//  Asset.m
//  Ch21_EmployeesAndAssets
//
//  Created by Eric Golovin on 1/8/20.
//  Copyright © 2020 ericgolovin. All rights reserved.
//

#import "Asset.h"

@implementation Asset

-(NSString *) description {
    return [NSString stringWithFormat:@"<%@: $%u", self.label, self.resaleValue];
}

-(void) dealloc {
    NSLog(@"deallocating %@", self);
}

@end
