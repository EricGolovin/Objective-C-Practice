//
//  AddressBook.h
//  Task18-1
//
//  Created by Eric Golovin on 1/2/20.
//  Copyright © 2020 Eric Golovin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressCard.h"

NS_ASSUME_NONNULL_BEGIN

@interface AddressBook : NSObject <NSCopying>

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

@end

NS_ASSUME_NONNULL_END
