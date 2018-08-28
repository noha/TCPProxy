printing
printOn: aStream
	aStream << 
		'proxy connection from ' << (self stringForSocket: sourceStream socket) << 
		' to ' << (self stringForSocket: destinationStream socket)