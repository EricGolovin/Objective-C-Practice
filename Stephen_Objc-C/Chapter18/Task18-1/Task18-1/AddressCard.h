//
//  AddressCard.h
//  Task18-1
//
//  Created by Eric Golovin on 1/2/20.
//  Copyright © 2020 Eric Golovin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AddressCard : NSObject

@property (nonatomic, copy) NSString *name, *email, *zipAddress, *country;

-(BOOL) isEqual:(AddressCard *)theCard;
-(NSComparisonResult) compareNames: (id) element;

-(void) setName:(NSString *)name andEmail:(NSString *)email andZip:(NSString *)zip andCountry:(NSString *)country;
-(void) print;

@end

NS_ASSUME_NONNULL_END
