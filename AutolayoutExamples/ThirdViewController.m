//
//  ThirdViewController.m
//  AutolayoutExamples
//
//  Created by Petr Pavlik on 8/7/13.
//  Copyright (c) 2013 Petr Pavlik. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    [self setEdgesForExtendedLayout:UIRectEdgeNone];
    
    UILabel* label0 = [UILabel new];
    label0.backgroundColor = [UIColor grayColor];
    label0.text = @"label0";
    label0.translatesAutoresizingMaskIntoConstraints = NO;
    //[label0 setContentHuggingPriority:UILayoutPriorityDefaultLow forAxis:UILayoutConstraintAxisHorizontal];
    [label0 setContentHuggingPriority:UILayoutPriorityDefaultHigh forAxis:UILayoutConstraintAxisHorizontal];
    [self.view addSubview:label0];
    
    UILabel* label1 = [UILabel new];
    label1.backgroundColor = [UIColor grayColor];
    label1.text = @"label1";
    label1.translatesAutoresizingMaskIntoConstraints = NO;
    //[label0 setContentHuggingPriority:UILayoutPriorityDefaultHigh forAxis:UILayoutConstraintAxisHorizontal];
    [label0 setContentHuggingPriority:UILayoutPriorityDefaultLow forAxis:UILayoutConstraintAxisHorizontal];
    [self.view addSubview:label1];
    
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"|-[label0]-[label1]-|" options:NSLayoutFormatAlignAllCenterY metrics:Nil views:NSDictionaryOfVariableBindings(label0, label1)]];
    
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-[label0]" options:0 metrics:Nil views:NSDictionaryOfVariableBindings(label0)]];
}

@end
