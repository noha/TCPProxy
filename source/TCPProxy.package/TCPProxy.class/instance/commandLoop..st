as yet unclassified
commandLoop: stream
	| reader line |
	reader := ZnLineReader on: stream.
	[[[[ 
		line := reader nextLine.
		(line beginsWith: 'connect') 
			ifTrue: [ self proxy: stream to: (Character space split: line) second ]
			ifFalse: [ stream nextPutAll: 'expected connect'. stream close ] ]
			on: ConnectionTimedOut 
			do: [ :e | ] ] repeat ] 
				on: ConnectionClosed 
				do: [ :e | ] ]
		forkAt: Processor highIOPriority 
		named: 'command loop'