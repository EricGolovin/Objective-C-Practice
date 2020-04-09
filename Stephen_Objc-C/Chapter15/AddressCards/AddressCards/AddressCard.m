//
//  AddressCard.m
//  AddressCards
//
//  Created by Eric Golovin on 12/21/19.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import "AddressCard.h"

@implementation AddressCard

@synthesize name, email, zipAddress, country;

-(BOOL) isEqual:(AddressCard *)theCard {
    if ([name isEqualToString: theCard.name] == true && [email isEqualToString: theCard.email] == true) {
        return true;
    } else {
        return false;
    }
}

-(NSComparisonResult) compareNames:(id)element {
    return [name compare:[element name]];
}

-(void) setName:(NSString *)name andEmail:(NSString *)email andZip:(NSString *)zip andCountry:(NSString *)country {
    self.name = name;
    self.email = email;
    self.zipAddress = zip;
    self.country = country;
}

-(void) print {
    printf("\n");
    NSLog(@"====================================");
    NSLog(@"|                                  |");
    NSLog(@"|  %-31s |", [name UTF8String]);
    NSLog(@"|  %-31s |", [email UTF8String]);
    NSLog(@"|  %-31s |", [zipAddress UTF8String]);
    NSLog(@"|  %-31s |", [country UTF8String]);
    NSLog(@"|                                  |");
    NSLog(@"|                                  |");
    NSLog(@"|                                  |");
    NSLog(@"|           ()         ()          |");
    NSLog(@"====================================");
    printf("\n\n");
}

@end
