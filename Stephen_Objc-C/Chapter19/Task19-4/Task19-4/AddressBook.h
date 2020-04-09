//
//  AddressBook.h
//  Task19-4
//
//  Created by Eric Golovin on 1/2/20.
//  Copyright © 2020 Eric Golovin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressCard.h"

NS_ASSUME_NONNULL_BEGIN

@interface AddressBook : NSObject <NSCoding> 

@property (nonatomic, copy) NSString *bookName;
@property (nonatomic, strong) NSMutableArray *book;

-(instancetype) initWithName: (NSString *) name;

-(void) addCard: (AddressCard *) theCard;
-(void) removeCard: (AddressCard *) theCard;
-(BOOL) removeName: (NSString *) theName;

-(NSMutableArray *) lookUp: (NSString *) theName;
-(void) sort;
-(NSUInteger) entries;
-(void) list;

-(id)copyWithZone:(nullable NSZone *)zone;

-(void) encodeWithCoder:(NSCoder *)coder;
-(id) initWithCoder:(NSCoder *)coder;

@end

NS_ASSUME_NONNULL_END
