//
//  AddressBook.h
//  AddressCards
//
//  Created by Eric Golovin on 12/22/19.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressCard.h"

NS_ASSUME_NONNULL_BEGIN

@interface AddressBook : NSObject

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

@end

NS_ASSUME_NONNULL_END
