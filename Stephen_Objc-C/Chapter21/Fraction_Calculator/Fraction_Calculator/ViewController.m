//
//  ViewController.m
//  Fraction_Calculator
//
//  Created by Eric Golovin on 1/5/20.
//  Copyright © 2020 ericgolovin. All rights reserved.
//

#import "ViewController.h"
#import "Calculator.h"

@interface ViewController ()

@end

@implementation ViewController {
    char op;
    int currentNumber;
    BOOL firstOperand, isNumerator, isOperation, isNegative;
    Calculator *myCalculator;
    NSMutableString *displayString;
}

@synthesize display;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    firstOperand = YES;
    isNumerator = YES;
    isOperation = NO;
    isNegative = NO;
    displayString = [NSMutableString stringWithCapacity:40];
    myCalculator = [[Calculator alloc] init];
}

-(void) processDigit:(int)digit {
    currentNumber = currentNumber * 10 + digit;
    
    [displayString appendString:[NSString stringWithFormat:@"%i", digit]];
    display.text = displayString;
}

-(IBAction) clickDigit:(UIButton *)sender {
    long int digit = sender.tag;
    
    [self processDigit:(int)digit];
}

-(void) processOp:(int)theOp {
    if (isOperation == YES) {
        NSString *opStr;
        
        op = theOp;
        
        switch (theOp) {
            case '+':
                opStr = @" + ";
                break;
            case '-':
                opStr = @" - ";
                break;
            case '*':
                opStr = @" * ";
                break;
            case '/':
                opStr = @" / ";
                break;
            default:
                break;
        }
        
        [self storeFracPart];
        firstOperand = NO;
        isNumerator = YES;
        isNegative = NO;
        
        [displayString appendString:opStr];
        display.text = displayString;
    } else {
        NSString *opStr = @"-";
        
        isNegative = YES;
        
        [displayString appendString:opStr];
        display.text = displayString;
    }
}

-(void) storeFracPart {
    if (isNegative) {
        currentNumber = -currentNumber;
    }
    if (firstOperand) {
        if (isNumerator) {
            myCalculator.operand1.numerator = currentNumber;
            myCalculator.operand1.denominator = 1;
            } else {
                myCalculator.operand1.denominator = currentNumber;
            }
    } else if (isNumerator) {
        myCalculator.operand2.numerator = currentNumber;
        myCalculator.operand2.denominator = 1;
    } else {
        myCalculator.operand2.denominator = currentNumber;
        firstOperand = YES;
    }
    
    currentNumber = 0;
}

-(IBAction) clickOver {
    [self storeFracPart];
    isNumerator = NO;
    isOperation = YES;
    [displayString appendString:@"/"];
    display.text = displayString;
}

// Arithmetic Operation keys

-(IBAction) clickPlus {
    [self processOp:'+'];
}

-(IBAction) clickMinus {
    [self processOp:'-'];
}

-(IBAction) clickMultiply {
    [self processOp:'*'];
}

-(IBAction) clickDivide {
    [self processOp:'/'];
}

// Misc. Keys

-(IBAction) clickConvert {
    double digit = [myCalculator.operand1 convertToNum];
    [displayString appendFormat:@" toNum %.3f", digit];
    display.text = displayString;
}

-(IBAction) clickEquals {
    if (firstOperand == NO) {
        [self storeFracPart];
        [myCalculator performOperation:op];
        
        [displayString appendString:@" = "];
        [displayString appendString:[myCalculator.accumulator convertToString]];
        display.text = displayString;
        
        currentNumber = 0;
        isNumerator = YES;
        firstOperand = YES;
        [displayString setString:@""];
    }
}

-(IBAction) clickClear {
    isNumerator = YES;
    firstOperand = YES;
    currentNumber = 0;
    [myCalculator clear];
    
    [displayString setString:@""];
    display.text = displayString;
}

@end
