tests
testSubMenuItemsDefaultsToEmpty
	"Req 8: CGStSpcMenuBuilder>>subMenuItems has an implementor (default empty), so
	 addMenuModel no longer raises doesNotUnderstand."

	self assert: CGStSpcMenuBuilder new subMenuItems isEmpty