instance creation
open
	| checker |
	checker := (self on: BMICheckerModel new) openWithSpec.
	checker window beUnresizeable; removeExpandBox.
	^ checker