private
delete
	" Close the receiver after confirmation "

	(self confirm: 'Close ' ,  self title) and: [ super delete ]