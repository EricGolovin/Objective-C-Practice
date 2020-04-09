//
//  ViewController.h
//  Fraction_Calculator
//
//  Created by Eric Golovin on 1/5/20.
//  Copyright © 2020 ericgolovin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *display;

-(void) processDigit:(int)digit;
-(void) processOp:(int)theOp;
-(void) storeFracPart;

// Numeric keys

-(IBAction) clickDigit:(UIButton *)sender;

// Arithmetic Operation keys

-(IBAction) clickPlus;
-(IBAction) clickMinus;
-(IBAction) clickMultiply;
-(IBAction) clickDivide;

// Misc. Keys

-(IBAction) clickOver;
-(IBAction) clickConvert;
-(IBAction) clickEquals;
-(IBAction) clickClear;

@end

