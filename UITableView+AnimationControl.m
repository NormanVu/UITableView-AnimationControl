//
//  UITableView+AnimationControl.m
//  UITableView-AnimationControl
//
//  Created by David Román Aguirre on 04/01/14.
//  Copyright (c) 2014 David Román Aguirre. All rights reserved.
//

#import "UITableView+AnimationControl.h"

@implementation UITableView (AnimationControl)

- (void)performDataSourceAction:(void (^)(void))action duration:(NSTimeInterval)duration completion:(void (^)(void))completion {
    [CATransaction begin];
    
    [CATransaction setCompletionBlock:completion];
    
    [UIView animateWithDuration:duration animations:^{
        [self beginUpdates];
        action();
        [self endUpdates];
    }];
    
    [CATransaction commit];
}

- (void)insertRowsAtIndexPaths:(NSArray *)indexPaths withRowAnimation:(UITableViewRowAnimation)animation duration:(NSTimeInterval)duration completion:(void (^)(void))completion {
    [self performDataSourceAction:^{
        [self insertRowsAtIndexPaths:indexPaths withRowAnimation:animation];
    } duration:duration completion:completion];
}

- (void)insertSections:(NSIndexSet *)sections withRowAnimation:(UITableViewRowAnimation)animation duration:(NSTimeInterval)duration completion:(void (^)(void))completion {
    [self performDataSourceAction:^{
        [self insertSections:sections withRowAnimation:animation];
    } duration:duration completion:completion];
}

- (void)deleteRowsAtIndexPaths:(NSArray *)indexPaths withRowAnimation:(UITableViewRowAnimation)animation duration:(NSTimeInterval)duration completion:(void (^)(void))completion {
    [self performDataSourceAction:^{
        [self deleteRowsAtIndexPaths:indexPaths withRowAnimation:animation];
    } duration:duration completion:completion];
}

- (void)deleteSections:(NSIndexSet *)sections withRowAnimation:(UITableViewRowAnimation)animation duration:(NSTimeInterval)duration completion:(void (^)(void))completion {
    [self performDataSourceAction:^{
        [self deleteSections:sections withRowAnimation:animation];
    } duration:duration completion:completion];
}

- (void)reloadRowsAtIndexPaths:(NSArray *)indexPaths withRowAnimation:(UITableViewRowAnimation)animation duration:(NSTimeInterval)duration completion:(void (^)(void))completion {
    [self performDataSourceAction:^{
        [self reloadRowsAtIndexPaths:indexPaths withRowAnimation:animation];
    } duration:duration completion:completion];
}

- (void)reloadSections:(NSIndexSet *)sections withRowAnimation:(UITableViewRowAnimation)animation duration:(NSTimeInterval)duration completion:(void (^)(void))completion {
    [self performDataSourceAction:^{
        [self reloadSections:sections withRowAnimation:animation];
    } duration:duration completion:completion];
}

- (void)moveRowAtIndexPath:(NSIndexPath *)indexPath toIndexPath:(NSIndexPath *)newIndexPath duration:(NSTimeInterval)duration completion:(void (^)(void))completion {
    [self performDataSourceAction:^{
        [self moveRowAtIndexPath:indexPath toIndexPath:newIndexPath];
    } duration:duration completion:completion];
}

- (void)moveSection:(NSInteger)section toSection:(NSInteger)newSection duration:(NSTimeInterval)duration completion:(void (^)(void))completion {
    [self performDataSourceAction:^{
        [self moveSection:section toSection:newSection];
    } duration:duration completion:completion];
}

@end
