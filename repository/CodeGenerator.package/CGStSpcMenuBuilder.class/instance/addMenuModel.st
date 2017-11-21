code-templates
addMenuModel

	self subMenuItems do: [ : subMenuSelector |
		self templateForAddGroupItem: subMenuSelector ]