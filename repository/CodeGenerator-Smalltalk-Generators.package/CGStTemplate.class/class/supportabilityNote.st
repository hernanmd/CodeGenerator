supportability
supportabilityNote
"Answer a human-readable <String> explaining this generator's supportability status."

self supportabilityStatus = #supported ifTrue: [ ^ 'Completes a headless smoke path with default configuration.' ].
self supportabilityStatus = #requiresInput ifTrue: [ ^ 'Completes once its required domain input is configured.' ].
self supportabilityStatus = #requiresResources ifTrue: [ ^ 'Needs external resources (files/UI); no headless smoke path.' ].
^ 'Not supported on the current Pharo line.'