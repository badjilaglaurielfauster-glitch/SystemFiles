"
a single file
"
Class {
	#name : 'FsFile',
	#superclass : 'FSEntry',
	#instVars : [
		'contents'
	],
	#category : 'SystemFiles',
	#package : 'SystemFiles'
}

{ #category : 'accessing' }
FsFile >> contents [ 
^contents 
]

{ #category : 'accessing' }
FsFile >> contents: aString [
 contents := aString 
]

{ #category : 'as yet unclassified' }
FsFile >> searchByContents: aString [
    (contents includesSubstring: aString)
        ifTrue: [ ^ self ].
    ^ nil
]

{ #category : 'as yet unclassified' }
FsFile >> searchByName: aString [
    (name = aString)
        ifTrue: [ ^ self ].
    ^ nil
]
