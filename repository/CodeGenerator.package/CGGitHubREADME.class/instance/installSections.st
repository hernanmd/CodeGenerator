private
installSections

	^ #(
		#hasPIExpr 				-> #piExpr .
		#hasInstallationText 	-> #installationText .
		#hasStInstExpr 			-> #stInstExpr .
		#hasDevInstExpr 		-> #devInstExpr 
		)