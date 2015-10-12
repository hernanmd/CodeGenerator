private
generate: repValue repeat: repCount
	" ' with: para' -> #('with: para' 'with: para' 'with: para') -> #('with: para1' 'with: para2' 'with: para3') "
	
	^ (super generate: repValue repeat: repCount) 
			withIndexCollect: [ : elem : index | elem , index asString ]