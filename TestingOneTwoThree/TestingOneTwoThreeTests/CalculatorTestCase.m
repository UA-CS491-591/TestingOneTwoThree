//
//  CalculatorTestCase.m
//  TestingOneTwoThree
//
//  Created by CS491 on 5/19/14.
//  Copyright (c) 2014 Center for Advanced Public Safety. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Calculator.h"

@interface CalculatorTestCase : XCTestCase
@property NSDateFormatter *dateFormatter;
@end

@implementation CalculatorTestCase

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    //Set up date formatter
    _dateFormatter = [[NSDateFormatter alloc] init];
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testPlusOperator
{
    XCTAssertEqual(0, [Calculator plus:0 secondNumber:0], @"Failed \"%s\"", __PRETTY_FUNCTION__);
    XCTAssertEqual(5, [Calculator plus:3 secondNumber:2], @"Failed \"%s\"", __PRETTY_FUNCTION__);
    XCTAssertEqual(-4, [Calculator plus:-7 secondNumber:3], @"Failed \"%s\"", __PRETTY_FUNCTION__);
    
}

@end
