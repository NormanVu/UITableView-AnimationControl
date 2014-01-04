//
//  MainViewController.h
//  UITableView-AnimationControl
//
//  Created by David Román Aguirre on 04/01/14.
//  Copyright (c) 2014 David Román Aguirre. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainViewController : UITableViewController {
    NSTimeInterval duration;
}

@property (strong, nonatomic) NSMutableArray * strings;

@end
