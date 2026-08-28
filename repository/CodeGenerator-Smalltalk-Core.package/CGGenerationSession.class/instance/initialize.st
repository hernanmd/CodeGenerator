initialization
initialize
	"Initialize a fresh session: empty generated-selector set and no active method build
	 (per-run isolation)."

	super initialize.
	generatedSelectors := OrderedCollection new.
	methodBuildActive := false