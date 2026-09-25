"
a single file
"
Class {
	#name : 'FsFile',
	#superclass : 'FSEntry',
	#category : 'SystemFiles',
	#package : 'SystemFiles'
}

{ #category : 'accessing' }
FsFile >> name [
^name
]

{ #category : 'accessing' }
FsFile >> name: aName [
name:= aName 
]

{ #category : 'as yet unclassified' }
FsFile >> searchByName: aString [
 (name = aString) ifTrue: [ ^self ]
]
