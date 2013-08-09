//
//  MasterViewController.m
//  AutolayoutExamples
//
//  Created by Petr Pavlik on 8/7/13.
//  Copyright (c) 2013 Petr Pavlik. All rights reserved.
//

#import "MasterViewController.h"

#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "FourthViewController.h"
#import "FifthViewController.h"

@interface MasterViewController () {

}
@end

@implementation MasterViewController

- (void)awakeFromNib
{
    [super awakeFromNib];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];

    cell.textLabel.text = @"a";
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (indexPath.row == 0) {
        
        FirstViewController* viewController = [FirstViewController new];
        [self.navigationController pushViewController:viewController animated:YES];
    }
    else if (indexPath.row == 1) {
        
        SecondViewController* viewController = [SecondViewController new];
        [self.navigationController pushViewController:viewController animated:YES];
    }
    else if (indexPath.row == 2) {
        
        ThirdViewController* viewController = [ThirdViewController new];
        [self.navigationController pushViewController:viewController animated:YES];
    }
    else if (indexPath.row == 3) {
        
        FourthViewController* viewController = [FourthViewController new];
        [self.navigationController pushViewController:viewController animated:YES];
    }
    else if (indexPath.row == 4) {
        
        FifthViewController* viewController = [FifthViewController new];
        [self.navigationController pushViewController:viewController animated:YES];
    }
}

@end
