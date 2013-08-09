//
//  FifthViewController.m
//  AutolayoutExamples
//
//  Created by Petr Pavlik on 8/7/13.
//  Copyright (c) 2013 Petr Pavlik. All rights reserved.
//

#import "FifthViewController.h"

@interface FifthViewController ()

@end

@implementation FifthViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return 100;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    if (!cell.textLabel.text.length) {
        
        cell.textLabel.text = @(indexPath.row).description;
    }
    
    return cell;
}

@end
