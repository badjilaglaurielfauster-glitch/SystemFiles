"
Please describe the package using the class comment of the included manifest class. The manifest class also includes other additional metadata for the package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : 'ManifestSystemFiles',
	#superclass : 'PackageManifest',
	#category : 'SystemFiles-Manifest',
	#package : 'SystemFiles',
	#tag : 'Manifest'
}

{ #category : 'code-critics' }
ManifestSystemFiles class >> ruleSelfSentNotImplementedRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGMethodDefinition #(#FsFile #named: #false)) #'2026-09-25T11:09:22.763833+02:00') )
]
