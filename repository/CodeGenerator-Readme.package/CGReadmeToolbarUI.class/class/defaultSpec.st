specs
defaultSpec
    <spec>
    ^ SpecLayout composed
			newRow: [ : c | 
				c 
					add: #clearButton;
					add: #settingsButton;
					add: #copyButton;
					add: #badgesButton;
					add: #generateButton;
					add: #saveButton;
					add: #closeButton;
					yourself ] height: self inputTextHeight;
			yourself
	      