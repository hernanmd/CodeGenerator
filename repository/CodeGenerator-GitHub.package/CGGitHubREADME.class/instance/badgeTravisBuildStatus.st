accessing-badges
badgeTravisBuildStatus

	^ '[![Build Status](https://travis-ci.org/$1/$repo.svg?branch=master)](https://travis-ci.org/$1/$repo)"' format: { self repositoryName }
