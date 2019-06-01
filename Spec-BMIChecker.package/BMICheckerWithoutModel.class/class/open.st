instance creation
open
	| checker |
	checker := self new openWithSpec.
	checker window beUnresizeable; removeExpandBox.
	^ checker