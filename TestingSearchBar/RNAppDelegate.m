//
//  RNAppDelegate.m
//  TestingSearchBar
//
//  Created by Ryan Nystrom on 5/19/14.
//  Copyright (c) 2014 Ryan Nystrom. All rights reserved.
//

#import "RNAppDelegate.h"
#import "RNContainerController.h"

@implementation RNAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    self.window.rootViewController = [[UINavigationController alloc] initWithRootViewController:[[RNContainerController alloc] init]];
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

@end
