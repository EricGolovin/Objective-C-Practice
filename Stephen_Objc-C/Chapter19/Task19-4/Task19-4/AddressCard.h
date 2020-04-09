//
//  AddressCard.h
//  Task19-4
//
//  Created by Eric Golovin on 1/2/20.
//  Copyright © 2020 Eric Golovin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AddressCard : NSObject <NSCoding>

@property (nonatomic, copy) NSString *name, *email, *zipAddress, *country;

-(BOOL) isEqual:(AddressCard *)theCard;
-(NSComparisonResult) compareNames: (id) element;

-(void) setName:(NSString *)nameT andEmail:(NSString *)emailT andZip:(NSString *)zipT andCountry:(NSString *)countryT;
-(void) print;

-(void) encodeWithCoder:(NSCoder *)coder;
-(id) initWithCoder:(NSCoder *)coder;

@end

NS_ASSUME_NONNULL_END
