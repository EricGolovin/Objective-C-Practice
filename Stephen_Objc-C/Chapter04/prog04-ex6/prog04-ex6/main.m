//
//  main.m
//  prog04-ex6
//
//  Created by Eric Golovin on 8/29/19.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Complex: NSObject

-(void) setReal: (double)a;
-(void) setImaginary: (double)b;
-(void) print;
-(double) real;
-(double) imaginary;

@end

@implementation Complex {
    int realNumber;
    int imaginaryNumber;
}

-(void) setReal:(double)a {
    realNumber = a;
}

-(void) setImaginary:(double)b {
    imaginaryNumber = b;
}

-(void) print {
    NSLog(@"%i + %ii", realNumber, imaginaryNumber);
}

-(double) real {
    return realNumber;
}

-(double) imaginary {
    return imaginaryNumber;
}

@end

int main(int argc, const char * argv[]) {
    
    @autoreleasepool {
        // creating a link to class
        Complex *complexEquation = [[Complex alloc] init];
        
        // setting numbers
        [complexEquation setReal:4];
        [complexEquation setImaginary:2];
        
        // printing result
        NSLog(@"Here is a complex equation result: ");
        [complexEquation print];
    }
    return 0;
}
