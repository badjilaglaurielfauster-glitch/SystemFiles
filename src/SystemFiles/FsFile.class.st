"
a single file
"
Class {
	#name : 'FsFile',
	#superclass : 'FSEntry',
	#category : 'SystemFiles',
	#package : 'SystemFiles'
}

{ #category : 'as yet unclassified' }
FsFile >> searchByName: aString [
    (name = aString)
        ifTrue: [ ^ self ].
    ^ nil
]
