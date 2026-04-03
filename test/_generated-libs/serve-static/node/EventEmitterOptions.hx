package node;

typedef EventEmitterOptions = {
	/**
		Enables automatic capturing of promise rejection.
	**/
	@:optional
	var captureRejections : Bool;
};