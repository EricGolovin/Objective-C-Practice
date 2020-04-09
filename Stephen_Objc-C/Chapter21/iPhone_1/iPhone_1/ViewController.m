//
//  ViewController.m
//  iPhone_1
//
//  Created by Eric Golovin on 1/3/20.
//  Copyright © 2020 ericgolovin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize display;

-(IBAction) click1 {
    display.text = @"1";
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


@end
