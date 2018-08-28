as yet unclassified
connect: aString
	| ip  addressString address destPort dataSocket |
	addressString := ($: split: aString) first.
	destPort := ($: split: aString) second asNumber.
	address := NetNameResolver addressFromString: addressString.
	dataSocket := Socket new.
	dataSocket connectTo: address port: destPort.
	(ZnNetworkingUtils socketStreamOn: dataSocket) nextPutAll: 'bar'; flush