//
//  UITableView+AnimationControl.h
//  UITableView-AnimationControl
//
//  Created by David Román Aguirre on 04/01/14.
//  Copyright (c) 2014 David Román Aguirre. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableView (AnimationControl)

- (void)insertRowsAtIndexPaths:(NSArray *)indexPaths withRowAnimation:(UITableViewRowAnimation)animation duration:(NSTimeInterval)duration completion:(void (^)(void))completion;
- (void)insertSections:(NSIndexSet *)sections withRowAnimation:(UITableViewRowAnimation)animation duration:(NSTimeInterval)duration completion:(void (^)(void))completion;

- (void)deleteRowsAtIndexPaths:(NSArray *)indexPaths withRowAnimation:(UITableViewRowAnimation)animation duration:(NSTimeInterval)duration completion:(void (^)(void))completion;
- (void)deleteSections:(NSIndexSet *)sections withRowAnimation:(UITableViewRowAnimation)animation duration:(NSTimeInterval)duration completion:(void (^)(void))completion;

- (void)reloadRowsAtIndexPaths:(NSArray *)indexPaths withRowAnimation:(UITableViewRowAnimation)animation duration:(NSTimeInterval)duration completion:(void (^)(void))completion;
- (void)reloadSections:(NSIndexSet *)sections withRowAnimation:(UITableViewRowAnimation)animation duration:(NSTimeInterval)duration completion:(void (^)(void))completion;

- (void)moveRowAtIndexPath:(NSIndexPath *)indexPath toIndexPath:(NSIndexPath *)newIndexPath duration:(NSTimeInterval)duration completion:(void (^)(void))completion;
- (void)moveSection:(NSInteger)section toSection:(NSInteger)newSection duration:(NSTimeInterval)duration completion:(void (^)(void))completion;

@end
