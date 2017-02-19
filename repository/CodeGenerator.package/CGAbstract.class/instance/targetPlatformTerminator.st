accessing
targetPlatformTerminator
	" Answer a <Symbol> for platform line-ending : #cr, #lf, #crlf "

	^ targetPlatformTerminator
		ifNil: [ targetPlatformTerminator := self platformTerminator ]