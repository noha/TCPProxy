initialization
initialize
	super initialize.
	semaphore := Semaphore forMutualExclusion.
	connections := Set new