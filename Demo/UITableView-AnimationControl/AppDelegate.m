//
//  AppDelegate.m
//  UITableView-AnimationControl
//
//  Created by David Román Aguirre on 04/01/14.
//  Copyright (c) 2014 David Román Aguirre. All rights reserved.
//

#import "AppDelegate.h"

#import "MainViewController.h"

@implementation AppDelegate

- (id)init {
    if (self = [super init]) {
        self.window = [UIWindow new];
    }
    
    return self;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [self.window setFrame:[[UIScreen mainScreen] bounds]];
    [self.window setBackgroundColor:[UIColor whiteColor]];
    
    [self.window setRootViewController:[[UINavigationController alloc] initWithRootViewController:[MainViewController new]]];
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
