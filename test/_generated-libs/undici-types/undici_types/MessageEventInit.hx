package undici_types;

typedef MessageEventInit<T> = {
	@:optional
	var data : T;
	@:optional
	var lastEventId : String;
	@:optional
	var origin : String;
	@:optional
	var ports : Array<{
		var prototype : node.worker_threads.MessagePort;
	}>;
	@:optional
	var source : {
		var prototype : node.worker_threads.MessagePort;
	};
	@:optional
	var bubbles : Bool;
	@:optional
	var cancelable : Bool;
	@:optional
	var composed : Bool;
};