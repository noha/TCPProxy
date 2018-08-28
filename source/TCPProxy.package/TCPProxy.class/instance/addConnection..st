adding
addConnection: aConnection
	aConnection proxy: self.
	Transcript show: 'adding connection ', aConnection asString; cr.
	semaphore critical: [ 
		connections add: aConnection ]