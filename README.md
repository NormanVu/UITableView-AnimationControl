UITableView-AnimationControl
============================

This UITableView category adds some really useful method additions as `insertRowsAtIndexPaths:withRowAnimations:duration:completion:`.

## CocoaPods

You can install UITableView-AnimationControl through CocoaPods adding the following to your Podfile:

	pod 'UITableView-AnimationControl'

## At a glance

This is how you should use it:

```objective-c
[self.tableViewDataArray addObject:object];

[self.tableView insertRowsAtIndexPaths:indexPaths withRowAnimation:rowAnimation duration:0.5 completion:^{
	// Action when animation is over.
}];
```

These are all methods available:

### Inserting

- `insertRowsAtIndexPaths:withRowAnimations:duration:completion:`
- `insertSections:withRowAnimation:duration:completion:`

### Deleting

- `deleteRowsAtIndexPaths:withRowAnimations:duration:completion:`
- `deleteRowsAtIndexPaths:withRowAnimation:duration:completion:`

### Reloading

- `reloadRowsAtIndexPaths:withRowAnimation:duration:completion:`
- `reloadSections:withRowAnimation:duration:completion:`

### Moving

- `moveRowAtIndexPath:toIndexPath:duration:completion:`
- `moveSection:toSection:duration:completion:`

## Requirements

- iOS 5 or higher.

## License

UITableView-AnimationControl is available under the MIT license.

Also, I'd really love to know you're using it in any of your projects, so send me an [**email**](mailto:dromaguirre@gmail.com) or a [**tweet**](http://twitter.com/Dromaguirre) and make my day :)
