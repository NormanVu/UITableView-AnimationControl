UITableView-AnimationControl
============================

Control the duration and completion of UITableView row/section-updating methods.

## CocoaPods

You can install UITableView-AnimationControl through CocoaPods adding the following to your Podfile:

	pod 'UITableView-AnimationControl'

## At a glance

This is how you should use it:

```objective-c
[self.tableViewDataArray addObject:object];

[self.tableView beginSmartUpdatesForDuration:0.25];
[self.tableView insertRowsAtIndexPaths:indexPaths withRowAnimation:rowAnimation completion:^{
	// Update animations ended. Do whatever you want!
}];
[self.tableView endSmartUpdates];
```

Notice it gets integrated perfectly with `NSFetchedResultsController`.

These are all methods available:

### Inserting

- `insertRowsAtIndexPaths:withRowAnimations:completion:`
- `insertSections:withRowAnimation:completion:`

### Deleting

- `deleteRowsAtIndexPaths:withRowAnimations:completion:`
- `deleteSections:withRowAnimation:completion:`

### Reloading

- `reloadRowsAtIndexPaths:withRowAnimation:completion:`
- `reloadSections:withRowAnimation:completion:`

### Moving

- `moveRowAtIndexPath:toIndexPath:completion:`
- `moveSection:toSection:completion:`

## Requirements

- iOS 5 or higher.

## License

UITableView-AnimationControl is available under the MIT license.

Also, I'd really love to know you're using it in any of your projects, so send me an [**email**](mailto:dromaguirre@gmail.com) or a [**tweet**](http://twitter.com/Dromaguirre) and make my day :)
