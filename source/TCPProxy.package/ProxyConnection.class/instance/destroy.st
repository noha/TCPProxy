deleting
destroy
	inProcess terminate.
	outProcess terminate.
	[sourceStream close] on: Error do: [ :e| ].
	[ destinationStream close ] on: Error do: [ :e | ].
	proxy removeConnection: self.