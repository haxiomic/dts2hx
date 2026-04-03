package js.html;

typedef MessageEventInit_<T> = {
	@:optional
	var data : T;
	@:optional
	var lastEventId : String;
	@:optional
	var origin : String;
	@:optional
	var ports : Array<js.html.MessagePort>;
	@:optional
	var source : MessageEventSource;
	@:optional
	var bubbles : Bool;
	@:optional
	var cancelable : Bool;
	@:optional
	var composed : Bool;
};