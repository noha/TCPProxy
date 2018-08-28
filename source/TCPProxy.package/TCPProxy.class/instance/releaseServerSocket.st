private
releaseServerSocket
	| address  |
	serverSocket ifNil: [ ^ self ].
	address := [ serverSocket address ] on: Error do: [ nil ].
	(Delay forMilliseconds: 10) wait.
	serverSocket destroy.
	serverSocket := nil.
