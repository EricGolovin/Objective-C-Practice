//
//  AddressBook.m
//  Task19-4
//
//  Created by Eric Golovin on 1/2/20.
//  Copyright © 2020 Eric Golovin. All rights reserved.
//

#import "AddressBook.h"

@implementation AddressBook

@synthesize bookName, book;

-(instancetype) initWithName:(NSString *)name {
    self = [super init];
    
    if (self) {
        bookName = [NSString stringWithString: name];
        book = [NSMutableArray array];
    }
    
    return self;
}

-(instancetype) init {
    return [self initWithName:@"NoName"];
}

-(void) addCard:(AddressCard *)theCard {
    AddressCard *cardToAdd = [[AddressCard alloc] init];
    cardToAdd.name = theCard.name;
    cardToAdd.email = theCard.email;
    cardToAdd.zipAddress = theCard.zipAddress;
    cardToAdd.country = theCard.country;
    
    [book addObject: cardToAdd];
}

-(NSMutableArray *) lookUp:(NSString *)theName {
    NSMutableArray *foundCards = [NSMutableArray array];
    
    for (AddressCard *nextCard in book) {
        NSString *lowercasedNextCardName = [nextCard.name lowercaseString];
        NSString *lowercasedNextCardEmail = [nextCard.email lowercaseString];
        NSString *lowercasedNextCardZipAddress = [nextCard.zipAddress lowercaseString];
        NSString *lowercasedNextCardCountry = [nextCard.country lowercaseString];
        
        NSString *lowercasedTheName = [theName lowercaseString];
        
        if ([lowercasedNextCardName containsString:lowercasedTheName]) {
            [foundCards addObject:nextCard];
        } else if ([lowercasedNextCardEmail containsString:lowercasedTheName]) {
            [foundCards addObject:nextCard];
        } else if ([lowercasedNextCardZipAddress containsString:lowercasedTheName]) {
            [foundCards addObject:nextCard];
        } else if ([lowercasedNextCardCountry containsString:lowercasedTheName]) {
            [foundCards addObject:nextCard];
        }
    }
    
    if ([foundCards count] > 0) {
        return foundCards;
    } else {
        return nil;
    }
    
//    NSIndexSet *result = [book indexesOfObjectsPassingTest: ^(id obj, NSUInteger idx, BOOL *stop) {
//        if ([[obj name] caseInsensitiveCompare: theName] == NSOrderedSame) {
//            return YES;
//        } else {
//            return NO;
//        }
//    }];
//
//    return result;
}

-(void) sort {
    // [book sortUsingSelector: @selector(compareNames:)];
    [book sortUsingComparator: ^(id obj1, id obj2) { return [[obj1 name] compare: [obj2 name]];}];
}

-(void) removeCard:(AddressCard *)theCard {
    [book removeObjectIdenticalTo:theCard];
}

-(BOOL) removeName:(NSString *)theName {
    NSMutableArray *candidatesForRemoval = [NSMutableArray array];
    
    for (AddressCard *theCard in book) {
        NSString *lowercasedCardName = [theCard.name lowercaseString];
        NSString *lowercasedTheName = [theName lowercaseString];
        
        if ([lowercasedCardName containsString:lowercasedTheName]) {
            [candidatesForRemoval addObject:theCard];
        }
    }
    if ([candidatesForRemoval count] == 1) {
        [book removeObjectIdenticalTo:[candidatesForRemoval objectAtIndex:0]];
        return YES;
    } else {
        return NO;
    }
}

-(NSUInteger) entries {
    return [book count];
}

-(void) list {
    printf("\n");
    NSLog(@"======== Contents of: %@ ========", bookName);
    
    for (AddressCard *theCard in book) {
        NSLog(@"%-20s     %-32s", [theCard.name UTF8String], [theCard.email UTF8String]);
    }
    
    NSLog(@"===================================================");
    printf("\n\n");
}

- (id)copyWithZone:(NSZone *)zone {
    AddressBook *copiedBook = [[AddressBook allocWithZone:zone]initWithName:self.bookName];
    
    for (AddressCard *card in self.book) {
        [copiedBook addCard:card];
    }
    
    return copiedBook;
}

-(void) encodeWithCoder:(NSCoder *)coder {
    [coder encodeObject:bookName forKey:@"AddressBookBookName"];
    [coder encodeObject:book forKey:@"AddressBookBook"];
}

-(id) initWithCoder:(NSCoder *)coder {
    bookName = [coder decodeObjectForKey:@"AddressBookBookName"];
    book = [coder decodeObjectForKey:@"AddressBookBook"];
    return self;
}

@end
