accessing
messageSendBuilder
	^ messageSendBuilder
		ifNil: [ messageSendBuilder := CGStMessageSendBuilder new ]