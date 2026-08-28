code-templates
templateForInitializeBuilderProduct
	"Answer a <String> with the basic product-instantiation template for the Builder pattern."

	^ 'initialize
		^ self product: {1} new' format: { self concreteClassNamePattern }