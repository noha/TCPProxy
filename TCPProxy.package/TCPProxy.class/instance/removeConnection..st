adding
removeConnection: aConnection
	semaphore critical: [ 
		connections remove: aConnection ]