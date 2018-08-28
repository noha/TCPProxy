accessing
start
	inProcess := self pipeReadingFrom: sourceStream writingTo: destinationStream.
	outProcess := self pipeReadingFrom: destinationStream writingTo: sourceStream 