as yet unclassified
pipeReadingFrom: inStream writingTo: outStream
	
	^ [ [  [ 
		[ 
		inStream next ifNotNil: [ :data | 
			Transcript show: 'read some bytes from ', (self stringForSocket: inStream socket); cr.
			outStream nextPutAll: data; flush .
			Transcript show: 'wrote some bytes to ', (self stringForSocket: outStream socket); cr ] ]
			on: ConnectionTimedOut do: [] ] repeat ]
		on: ConnectionClosed 
		do: [ :err | self destroy ] ] 
	forkAt: Processor lowIOPriority  
	named: 'foo', 1000 atRandom asString