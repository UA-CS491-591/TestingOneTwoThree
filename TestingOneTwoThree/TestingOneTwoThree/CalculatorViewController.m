//
//  CalculatorViewController.m
//  TestingOneTwoThree
//
//  Created by Matthew York on 5/19/14.
//  Copyright (c) 2014 Center for Advanced Public Safety. All rights reserved.
//

#import "CalculatorViewController.h"

@interface CalculatorViewController ()

@end

@implementation CalculatorViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)didPressNumber:(UIButton *)sender {
    int inuputNumber = sender.titleLabel.text.intValue;
    NSLog(@"%d", inuputNumber);
}

@end
