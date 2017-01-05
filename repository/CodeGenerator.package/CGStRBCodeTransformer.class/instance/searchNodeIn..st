private
searchNodeIn: methodNode

	^ (RBParseTreeSearcher new
		matchesTree: (RBParser parseExpression: '^ self')
		do: [ :aNode :answer | aNode ]) executeTree: methodNode.