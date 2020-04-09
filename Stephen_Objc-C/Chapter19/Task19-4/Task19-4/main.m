//
//  main.m
//  Task19-4
//
//  Created by Eric Golovin on 1/2/20.
//  Copyright © 2020 Eric Golovin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressBook.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        AddressCard *card1 = [[AddressCard alloc] init];
        AddressCard *card2 = [[AddressCard alloc] init];
        AddressCard *card3 = [[AddressCard alloc] init];
        AddressCard *card4 = [[AddressCard alloc] init];
        AddressCard *card5 = [[AddressCard alloc] init];
        
        [card1 setName:@"Johnatan" andEmail:@"john-watson@london.com" andZip: @"XIS122" andCountry:@"United Kingdom"];
        [card2 setName:@"Shelock" andEmail:@"sherlock-homes@london.com" andZip: @"XIS122" andCountry:@"United Kingdom"];
        [card3 setName:@"Doctorina" andEmail:@"doctorina@london.com" andZip: @"XIS122" andCountry:@"United Kingdom"];
        [card4 setName:@"Mary Watson" andEmail:@"mary@london.com" andZip: @"XIS122" andCountry:@"United Kingdom"];
        [card5 setName:@"Rehni Watson" andEmail:@"unknown" andZip: @"XIS122" andCountry:@"United Kingdom"];
        
        AddressBook *myBook = [[AddressBook alloc] initWithName:@"Queen's Address Book"];
        
        NSLog(@"Entries in address book after creation: %li", [myBook entries]);
        
        [myBook addCard:card1];
        [myBook addCard:card2];
        [myBook addCard:card3];
        [myBook addCard:card4];
        [myBook addCard:card5];
        
        NSLog(@"Entries in address book after adding cards: %li", [myBook entries]);
        
        [myBook list];
        
        NSMutableArray *foundCards = [myBook lookUp:@"wAt"];
        
        NSLog(@"%lu", (unsigned long)[foundCards count]);
        
        if (foundCards != nil) {
            NSLog(@"Found cards:");
            for (AddressCard *card in foundCards) {
                [card print];
            }
        } else {
            NSLog(@"Not Found!");
        }
        
        NSLog(@"Book after card removal:");
        [myBook removeCard: foundCards[0]];
        [myBook list];
        
        NSLog(@"Book after card removal by name:");
        if ([myBook removeName:@"wa"]) {
            [myBook list];
        } else {
            NSLog(@"Cannot be removed, write correct Name");
        }
        
        NSLog(@"Book after sorting:");
        [myBook sort];
        [myBook list];
        
        [card2 setName:@"---" andEmail:@"---" andZip: @"---" andCountry:@"---"];
        [myBook list];
        
        AddressBook *copyOfTheBook = [myBook copy];
        
        [card2 setName:@"Shelock" andEmail:@"sherlock-homes@london.com" andZip: @"XIS122" andCountry:@"United Kingdom"];
        
        NSLog(@"Copied book:");
        [copyOfTheBook list];
        
        
        // Archiving AddressBook
        NSData *objectData;
        
        objectData = [NSKeyedArchiver archivedDataWithRootObject:myBook requiringSecureCoding:YES error:nil];
        if ([objectData writeToFile:@"myAddressArchive" atomically:YES] == NO) {
            NSLog(@"Couldn't create myAddressArchive");
        }
        
        // Unarchiving AddressBook
        NSData *newData = [NSData dataWithContentsOfFile:@"./myAddressArchive"];
        
        AddressBook *newBook = [[AddressBook alloc] init];
        newBook = [NSKeyedUnarchiver unarchivedObjectOfClass:[AddressBook class] fromData:newData error:nil];
        
        NSLog(@"New Book:");
        NSLog(@"%@", newBook.bookName);
    }
    return 0;
}
