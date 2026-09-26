Class {
	#name : 'FsFileTest',
	#superclass : 'TestCase',
	#category : 'SystemFiles-Tests',
	#package : 'SystemFiles-Tests'
}

{ #category : 'tests' }
FsFileTest >> testDoesNotGiveFileWhenNameDoesNotMatch [

| file result |

file := FsFile new name: 'rapport.md'.

result := file searchByName: 'test.st'.

self assert: result equals: nil
]

{ #category : 'tests' }
FsFileTest >> testGiveFile [

|files result|
files := FsFile new name: 'rapport-week04.md'.
result := files searchByName: 'rapport-week04.md' . 

self assert: result equals: files 

]
