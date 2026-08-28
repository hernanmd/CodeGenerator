accessing
targetSelector
	"Answer a <Symbol> for the current target selector, or nil when none is set (e.g. during
	 template-driven generation where the selector is part of the template source)."

	^ targetSelector ifNotNil: [ :s | s asSymbol ]