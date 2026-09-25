Class {
	#name : 'FsDirectoryTest',
	#superclass : 'TestCase',
	#category : 'SystemFiles-Tests',
	#package : 'SystemFiles-Tests'
}

{ #category : 'tests' }
FsDirectoryTest >> testFindFirstChildren [

|directory file result|

directory:= FSDirectory new.
file:= FsFile new name: 'test.st'.
directory add: file .
result := directory searchByName: 'test.st'.

self assert: result equals: file 
]
