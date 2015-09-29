code-generation
buildMessageSend: selector
	" #('a' 'b' 'c') .  #(1 2 3) . #('a' 1 'b' 2 'c' 3) "
	
	| messageSend parameterSend |

	parameterSend := (self mapSelector: selector) , ' '.
	messageSend := String streamContents: [ : stream | 
		(selector findTokens: $:) 
			asStringOn: stream 
			delimiter: parameterSend ].
	^ messageSend , parameterSend
