//
//  RNContainerController.m
//  TestingSearchBar
//
//  Created by Ryan Nystrom on 5/19/14.
//  Copyright (c) 2014 Ryan Nystrom. All rights reserved.
//

#import "RNContainerController.h"
#import "RNTableViewController.h"

@interface RNContainerController ()

@property (nonatomic, strong) RNTableViewController *tableViewController;
@property (nonatomic, strong) UISearchDisplayController *searchController;

@end

@implementation RNContainerController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Container";
    
    self.tableViewController = [[RNTableViewController alloc] init];
    [self rn_addChildViewController:self.tableViewController];
    
    self.searchController = [[UISearchDisplayController alloc] initWithSearchBar:self.tableViewController.searchBar contentsController:self];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.tableViewController.view.frame = self.view.bounds;
}

- (BOOL)shouldAutomaticallyForwardAppearanceMethods {
    return YES;
}

- (void)rn_addChildViewController:(UIViewController *)controller {
    [controller beginAppearanceTransition:YES animated:NO];
    [controller willMoveToParentViewController:self];
    [self addChildViewController:controller];
    [self.view addSubview:controller.view];
    [controller didMoveToParentViewController:controller];
    [controller endAppearanceTransition];
}

- (void)rn_removeChildViewController:(UIViewController *)controller {
    if ([self.childViewControllers containsObject:controller]) {
        [controller beginAppearanceTransition:NO animated:NO];
        [controller willMoveToParentViewController:nil];
        [controller.view removeFromSuperview];
        [controller removeFromParentViewController];
        [controller didMoveToParentViewController:nil];
        [controller endAppearanceTransition];
    }
}

@end
