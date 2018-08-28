as yet unclassified
proxy: stream to: aString
	|  addressString address destPort destStream |
	[ 
	addressString := ($: split: aString) first.
	destPort := ($: split: aString) second asNumber.
	address := NetNameResolver addressFromString: addressString.
	destStream := SocketStream openConnectionToHost: address port: destPort ]
		on: Error  
		do: [ :err | 
			stream nextPutAll: err messageText. 
			stream flush.
			stream close.
			^ self ]. 
	self addConnection:  (ProxyConnection new 
		sourceStream: stream;
		destinationStream: destStream;
		start)