//
//  FourthViewController.m
//  AutolayoutExamples
//
//  Created by Petr Pavlik on 8/7/13.
//  Copyright (c) 2013 Petr Pavlik. All rights reserved.
//

#import "FourthViewController.h"

@interface FourthViewController ()

@property(nonatomic, strong) NSArray* constraints0;
@property(nonatomic, strong) NSArray* constraints1;
@property(nonatomic) BOOL topLeftCorner;

@end

@implementation FourthViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    [self setEdgesForExtendedLayout:UIRectEdgeNone];
    
    UIButton* button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button setTitle:@"Button" forState:UIControlStateNormal];
    [self.view addSubview:button];
    button.translatesAutoresizingMaskIntoConstraints = NO;
    [button addTarget:self action:@selector(buttonPressed) forControlEvents:UIControlEventTouchUpInside];
    
    NSMutableArray* constraints0 = [NSMutableArray new];
    [constraints0 addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"|-[button]" options:0 metrics:Nil views:NSDictionaryOfVariableBindings(button)]];
    [constraints0 addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-[button]" options:0 metrics:Nil views:NSDictionaryOfVariableBindings(button)]];
    
    NSMutableArray* constraints1 = [NSMutableArray new];
    [constraints1 addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"[button]-|" options:0 metrics:Nil views:NSDictionaryOfVariableBindings(button)]];
    [constraints1 addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[button]-|" options:0 metrics:Nil views:NSDictionaryOfVariableBindings(button)]];
    
    self.constraints0 = constraints0;
    self.constraints1 = constraints1;
    
    [self.view addConstraints:constraints0];
    self.topLeftCorner = YES;
}

- (void)buttonPressed {
    
    if (self.topLeftCorner) {
        
        [self.view removeConstraints:self.constraints0];
        [self.view addConstraints:self.constraints1];
        self.topLeftCorner = NO;
    }
    else {
        
        [self.view removeConstraints:self.constraints1];
        [self.view addConstraints:self.constraints0];
        self.topLeftCorner = YES;
    }
    
    [UIView animateWithDuration:0.35 animations:^{
        [self.view layoutIfNeeded];
    }];
}

@end
