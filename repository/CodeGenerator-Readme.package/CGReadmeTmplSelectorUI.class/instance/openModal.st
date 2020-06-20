instance creation
openModal
	| result |
	self whenSelected: [ : file | result := self template / file ].
	self openWithSpec modalRelativeTo: self currentWorld.
	^ result