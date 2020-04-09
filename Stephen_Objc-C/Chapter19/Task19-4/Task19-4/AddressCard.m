//
//  AddressCard.m
//  Task19-4
//
//  Created by Eric Golovin on 1/2/20.
//  Copyright © 2020 Eric Golovin. All rights reserved.
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

-(void) setName:(NSString *)nameT andEmail:(NSString *)emailT andZip:(NSString *)zipT andCountry:(NSString *)countryT {
    self.name = nameT;
    self.email = emailT;
    self.zipAddress = zipT;
    self.country = countryT;
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

-(void) encodeWithCoder:(NSCoder *)coder {
    [coder encodeObject:name forKey:@"AddressCardName"];
    [coder encodeObject:email forKey:@"AddressCardEmail"];
    [coder encodeObject:zipAddress forKey:@"AddressCardZipAddress"];
    [coder encodeObject:country forKey:@"AddressCardCountry"];
}

-(id) initWithCoder:(NSCoder *)coder {
    name = [coder decodeObjectForKey:@"AddressCardName"];
    email = [coder decodeObjectForKey:@"AddressCardEmail"];
    zipAddress = [coder decodeObjectForKey:@"AddressCardZipAddress"];
    country = [coder decodeObjectForKey:@"AddressCardCountry"];
    return self;
}

@end
