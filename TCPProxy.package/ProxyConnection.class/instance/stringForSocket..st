as yet unclassified
stringForSocket: socket
	^ String streamContents: [:stream |
		(SocketAddress fromOldByteAddress: socket address) printOn: stream.
		stream nextPut: $:.
		stream nextPutAll: socket port asString ]