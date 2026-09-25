"
Fs entry representation

"
Class {
	#name : 'FSEntry',
	#superclass : 'Object',
	#instVars : [
		'name'
	],
	#category : 'SystemFiles',
	#package : 'SystemFiles'
}

{ #category : 'as yet unclassified' }
FSEntry >> searchByName: aString [
^self subclassResponsibility
]
