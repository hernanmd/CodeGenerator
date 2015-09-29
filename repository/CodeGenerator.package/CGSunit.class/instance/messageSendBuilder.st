accessing
messageSendBuilder
	^ messageSendBuilder
		ifNil: [ messageSendBuilder := CGSmalltalkMessageSendBuilder new ]