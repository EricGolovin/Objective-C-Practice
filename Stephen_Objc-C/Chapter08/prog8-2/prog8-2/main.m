//
//  main.m
//  prog8-2
//
//  Created by Eric Golovin on 08.10.2019.
//  Copyright © 2019 EricGolovin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Square.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Square *mySquare = [[Square alloc] init];
        
        [mySquare setSide:5];
        
        NSLog(@"Square s = %i", [mySquare side]);
        NSLog(@"Area = %i, Perimeter = %i", [mySquare area], [mySquare perimeter]);

    }
    return 0;
}
