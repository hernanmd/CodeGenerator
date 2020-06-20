actions
select
	self templateList selectedItemInList ifNotNil: [ : selectedText | 
		onSelectBlock value: selectedText ]