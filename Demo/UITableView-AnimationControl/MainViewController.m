//
//  MainViewController.m
//  UITableView-AnimationControl
//
//  Created by David Román Aguirre on 04/01/14.
//  Copyright (c) 2014 David Román Aguirre. All rights reserved.
//

#import "MainViewController.h"

#import "UITableView+AnimationControl.h"

@implementation MainViewController

- (void)resetDuration {
    duration = drand48();
}

- (id)init {
    if (self = [super init]) {
        [self resetDuration];
        
        self.strings = [NSMutableArray new];
    }
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
	
    [self setup];
}

- (void)setup {
    [self setTitle:@"UITableView+AnimationControl"];
    
    [self.tableView setBackgroundColor:[UIColor colorWithWhite:0.96 alpha:1]];
    [self.tableView setTableFooterView:[UIView new]];
    [self.tableView setSeparatorInset:UIEdgeInsetsZero];
    
    [self insertRows];
}

- (void)insertRows {
    if (self.strings.count == 4) {
        [self resetDuration];
        [self deleteRows];
        return;
    }
    
    NSIndexPath * indexPath = [NSIndexPath indexPathForRow:[self.tableView numberOfRowsInSection:0] inSection:0];
    
    UITableViewRowAnimation rowAnimation = indexPath.row % 2 == 0 ? UITableViewRowAnimationLeft : UITableViewRowAnimationRight;
    
    [self.strings addObject:[NSString stringWithFormat:@"Cell %i", indexPath.row]];
    [self.tableView insertRowsAtIndexPaths:@[indexPath] withRowAnimation:rowAnimation duration:duration completion:^{
        [self performSelector:@selector(insertRows) withObject:nil afterDelay:0.2];
    }];
}

- (void)deleteRows {
    if ([self.tableView numberOfRowsInSection:0] == 0) {
        [self resetDuration];
        [self insertRows];
        return;
    }
    
    NSIndexPath * indexPath = [NSIndexPath indexPathForRow:[self.tableView numberOfRowsInSection:0]-1 inSection:0];
    
    UITableViewRowAnimation rowAnimation = indexPath.row % 2 == 0 ? UITableViewRowAnimationLeft : UITableViewRowAnimationRight;
    
    [self.strings removeLastObject];
    [self.tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:rowAnimation duration:duration completion:^{
        [self performSelector:@selector(deleteRows) withObject:nil afterDelay:0.2];
    }];
}

#pragma mark - UITableView Data Source -

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.strings count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString * reuseIdentifier = @"Reuse Identifier";
    
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:reuseIdentifier];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reuseIdentifier];
    }
    
    [cell.textLabel setText:self.strings[indexPath.row]];
    
    return cell;
}

#pragma mark - UITableView Delegate -

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 55;
}

@end
