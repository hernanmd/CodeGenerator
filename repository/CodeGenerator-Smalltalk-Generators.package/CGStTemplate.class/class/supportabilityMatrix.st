supportability
supportabilityMatrix
	"Answer a <Dictionary> mapping each concrete catalog generator class name (<Symbol>) to its supportabilityStatus (<Symbol>). Covers every CGStTemplate subclass so no catalog entry is left as a silent unknown (Req 10)."

	| matrix |
	matrix := Dictionary new.
	self withAllSubclasses do: [ :each |
		matrix at: each name asSymbol put: each supportabilityStatus ].
	^ matrix