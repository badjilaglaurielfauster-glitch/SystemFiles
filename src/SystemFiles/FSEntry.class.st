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

{ #category : 'accessing' }
FSEntry >> name [
^name
]

{ #category : 'accessing' }
FSEntry >> name: aName [
name:= aName 
]

{ #category : 'as yet unclassified' }
FSEntry >> searchByName: aString [
^self subclassResponsibility
]
