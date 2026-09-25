Class {
	#name : 'FsFileTest',
	#superclass : 'TestCase',
	#category : 'SystemFiles-Tests',
	#package : 'SystemFiles-Tests'
}

{ #category : 'tests' }
FsFileTest >> testGiveFile [

|files result|
files := FsFile new name: 'rapport-week04.md'.
result := files searchByName: 'rapport-week04.md' . 

self assert: result equals: files 

]
