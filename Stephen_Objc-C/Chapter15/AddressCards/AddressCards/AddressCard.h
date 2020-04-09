//
//  AddressCard.h
//  AddressCards
//
//  Created by Eric Golovin on 12/21/19.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AddressCard : NSObject

@property (copy, nonatomic) NSString *name, *email, *zipAddress, *country;

-(BOOL) isEqual:(AddressCard *)theCard;
-(NSComparisonResult) compareNames: (id) element;

-(void) setName:(NSString *)name andEmail:(NSString *)email andZip:(NSString *)zip andCountry:(NSString *)country;
-(void) print;

@end

NS_ASSUME_NONNULL_END
