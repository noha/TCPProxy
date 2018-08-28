as yet unclassified
stop
	connections do: #destroy.
	process terminate.
	[serverSocket close] on: Error do: [ :e | ]