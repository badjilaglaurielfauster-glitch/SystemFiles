Class {
	#name : 'FsDirectoryTest',
	#superclass : 'TestCase',
	#category : 'SystemFiles-Tests',
	#package : 'SystemFiles-Tests'
}

{ #category : 'tests' }
FsDirectoryTest >> testCantFindChildren [

|directory file result|

directory:= FSDirectory new name: 'src'.
file:= FsFile new name: 'test.st'.
directory add: file .
result := directory searchByName: 'autre.st'.

self assert: result equals: nil 
]

{ #category : 'tests' }
FsDirectoryTest >> testChildrenInAnotherDirectory [

|directory dir file result|
file:= FsFile new name: 'fsDirectory.st'.
directory := FSDirectory new name: 'root'.
dir:= FSDirectory new name: 'src'.
directory add: dir .
dir add: file .

result := directory searchByName: 'fsDirectory.st' .

self assert: file equals: result 

]

{ #category : 'tests' }
FsDirectoryTest >> testFindFirstChildren [

|directory file result|

directory:= FSDirectory new name: 'src'.
file:= FsFile new name: 'test.st'.
directory add: file .
result := directory searchByName: 'test.st'.

self assert: result equals: file 
]

{ #category : 'tests' }
FsDirectoryTest >> testReturnTheFirstChildren [

|directory file dir res result|

file:= FsFile new name: 'fsDirectory.st'.
res := FsFile new name: 'fsDirectory.st' . 
directory := FSDirectory new name: 'root'.
dir:= FSDirectory new name: 'src'.
directory add: file .
directory add: dir .
dir add: res .

result := directory searchByName: 'fsDirectory.st' .

self assert: file equals: result 
]
