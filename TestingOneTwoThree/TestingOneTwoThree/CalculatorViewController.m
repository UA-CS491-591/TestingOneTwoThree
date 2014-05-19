//
//  CalculatorViewController.m
//  TestingOneTwoThree
//
//  Created by Matthew York on 5/19/14.
//  Copyright (c) 2014 Center for Advanced Public Safety. All rights reserved.
//

#import "CalculatorViewController.h"

typedef NS_ENUM(NSUInteger, Operator) {CalcOperatorPlus, CalcOperatorMinus, CalcOperatorMultiply, CalcOperatorDivide};

@interface CalculatorViewController ()
@property (weak, nonatomic) IBOutlet UILabel *DisplayLabel;
@property Operator selectedOperator;
@property long long firstNumber;
@property BOOL displayShouldReset;
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
    if (_displayShouldReset) {
        _displayShouldReset = NO;
        _DisplayLabel.text = sender.titleLabel.text;
    }
    else {
        if ([_DisplayLabel.text isEqualToString:@"0"]) {
            _DisplayLabel.text = @"";
        }
        _DisplayLabel.text = [_DisplayLabel.text stringByAppendingString:sender.titleLabel.text];
    }
}

- (IBAction)didSelectOperation:(UIButton *)sender {
    if ([sender.titleLabel.text isEqualToString:@"+"]) {
        _selectedOperator = CalcOperatorPlus;
    }
    else if ([sender.titleLabel.text isEqualToString:@"-"]) {
        _selectedOperator = CalcOperatorMinus;
    }
    else if ([sender.titleLabel.text isEqualToString:@"*"]) {
        _selectedOperator = CalcOperatorMultiply;
    }
    else if ([sender.titleLabel.text isEqualToString:@"/"]) {
        _selectedOperator = CalcOperatorDivide;
    }
    
    _displayShouldReset = YES;
    
    _firstNumber = _DisplayLabel.text.longLongValue;
}

- (IBAction)didSelectClear:(id)sender {
    _displayShouldReset = NO;
    _firstNumber = 0;
    _DisplayLabel.text = @"0";
}

- (IBAction)didSelectEquals:(id)sender {
    
}


@end
