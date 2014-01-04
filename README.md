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

- `insertRowsAtIndexPaths:withRowAnimations:duration:completion:`
- `insertSections:withRowAnimation:duration:completion:`
- `deleteRowsAtIndexPaths:withRowAnimations:duration:completion:`
- `deleteRowsAtIndexPaths:withRowAnimation:duration:completion:`
- `reloadRowsAtIndexPaths:withRowAnimation:duration:completion:`
- `reloadSections:withRowAnimation:duration:completion:`
- `moveRowAtIndexPath:toIndexPath:duration:completion:`
- `moveSection:toSection:duration:completion:`

## Requirements

- iOS 5 or higher.

## Creator

[David Román](http://github.com/Dromaguirre) | [@Dromaguirre](http://twitter.com/Dromaguirre)

## License

You can use it for whatever you want, however you want. I just [**would love to know**](mailto:dromaguirre@gmail.com) if you're using it in any project of yours.