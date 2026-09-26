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
FSDirectory >> searchByContents: aString [
|res|

children do: [ :child | 
	res:= child searchByContents: aString .
	res ifNotNil: [ ^res]
	].
^nil 
]

{ #category : 'as yet unclassified' }
FSDirectory >> searchByName: anElement [
    | res |
    children do: [ :child |
        res := child searchByName: anElement.
        res ifNotNil: [ ^ res ].
    ].
    ^ nil
]
