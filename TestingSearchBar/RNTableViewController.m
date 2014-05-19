//
//  RNTableViewController.m
//  TestingSearchBar
//
//  Created by Ryan Nystrom on 5/19/14.
//  Copyright (c) 2014 Ryan Nystrom. All rights reserved.
//

#import "RNTableViewController.h"

@interface RNTableViewController ()
<UISearchBarDelegate>

@property (nonatomic, strong) NSArray *items;

@end

@implementation RNTableViewController

NSString * const CellIdentifier = @"CellIdentifier";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Table View";
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:CellIdentifier];
    
    self.searchBar = [[UISearchBar alloc] init];
    [self.searchBar sizeToFit];
    self.tableView.tableHeaderView = self.searchBar;
    
    self.items = @[@"I'm", @"A", @"Child", @"UITableViewController"];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.items count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    cell.textLabel.text = self.items[indexPath.row];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}

@end
