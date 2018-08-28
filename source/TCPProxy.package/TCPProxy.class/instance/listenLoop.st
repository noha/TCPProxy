as yet unclassified
listenLoop
	| stream clientSocket |
	serverSocket := ZnNetworkingUtils serverSocketOn: self port "interface: #[ 127 0 0 1]".
	[ [  
		clientSocket := serverSocket waitForAcceptFor: 300. 
		stream := ZnNetworkingUtils socketStreamOn: clientSocket.
		self commandLoop: stream.
		 ] repeat ]
	ifCurtailed: [ self releaseServerSocket  ].