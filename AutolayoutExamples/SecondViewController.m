//
//  SecondViewController.m
//  AutolayoutExamples
//
//  Created by Petr Pavlik on 8/7/13.
//  Copyright (c) 2013 Petr Pavlik. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    [self setEdgesForExtendedLayout:UIRectEdgeNone];
    
    UIButton* button0 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button0 setTitle:@"Button 1" forState:UIControlStateNormal];
    button0.translatesAutoresizingMaskIntoConstraints = NO;
    button0.backgroundColor = [UIColor grayColor];
    [self.view addSubview:button0];
    
    UIButton* button1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button1 setTitle:@"Button 2222222222" forState:UIControlStateNormal];
    button1.translatesAutoresizingMaskIntoConstraints = NO;
    button1.backgroundColor = [UIColor grayColor];
    [self.view addSubview:button1];
    
    //[self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"|-[button0]-[button1]-|" options:NSLayoutFormatAlignAllCenterY metrics:Nil views:NSDictionaryOfVariableBindings(button0, button1)]];
    
    //[self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"|-[button0]->=8-[button1]-|" options:NSLayoutFormatAlignAllCenterY metrics:Nil views:NSDictionaryOfVariableBindings(button0, button1)]];
    
    //[self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"|->=15-[button0]-[button1]->=15-|" options:NSLayoutFormatAlignAllCenterY metrics:Nil views:NSDictionaryOfVariableBindings(button0, button1)]];
    
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"|-[button0(44)]->=8-[button1(button0)]-|" options:NSLayoutFormatAlignAllCenterY metrics:Nil views:NSDictionaryOfVariableBindings(button0, button1)]];
 
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-[button0]" options:0 metrics:Nil views:NSDictionaryOfVariableBindings(button0)]];
}

@end
