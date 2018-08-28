accessing
start
 
	(process notNil and: [ process isTerminated not ]) ifTrue: [ 
		process terminate ].
	process := [ [ self listenLoop ] repeat ]
		forkAt: Processor highIOPriority
		named: 'tcp proxy' 