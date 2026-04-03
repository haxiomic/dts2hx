package node;

typedef StaticEventEmitterOptions = {
	/**
		Can be used to cancel awaiting events.
	**/
	@:optional
	var signal : js.html.AbortSignal;
};