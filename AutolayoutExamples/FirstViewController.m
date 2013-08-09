//
//  FirstViewController.m
//  AutolayoutExamples
//
//  Created by Petr Pavlik on 8/7/13.
//  Copyright (c) 2013 Petr Pavlik. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    [self setEdgesForExtendedLayout:UIRectEdgeNone];
    
    UILabel* label = [UILabel new];
    label.backgroundColor = [UIColor grayColor];
    label.text = @"label";
    label.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:label];
    
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"|-[label]-|" options:0 metrics:Nil views:NSDictionaryOfVariableBindings(label)]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-[label]" options:0 metrics:Nil views:NSDictionaryOfVariableBindings(label)]];
    
    UIButton* button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button setTitle:@"Button" forState:UIControlStateNormal];
    button.translatesAutoresizingMaskIntoConstraints = NO;
    button.backgroundColor = [UIColor grayColor];
    [self.view addSubview:button];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:button attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1 constant:0]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:button attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterY multiplier:1 constant:0]];
    
}

@end
