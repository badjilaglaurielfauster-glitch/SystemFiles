"
a directory
"
Class {
	#name : 'FSDirectory',
	#superclass : 'FSEntry',
	#instVars : [
		'children'
	],
	#category : 'SystemFiles',
	#package : 'SystemFiles'
}

{ #category : 'adding' }
FSDirectory >> add: anElement [
 children add: anElement 
]

{ #category : 'initialization' }
FSDirectory >> initialize [ 
super initialize .
children := OrderedCollection new 
]

{ #category : 'as yet unclassified' }
FSDirectory >> searchByName: anElement [
children do: [ :child | child searchByName: anElement ]
]
