package node.stream.web;

typedef ReadableStreamReadDoneResult<T> = {
	var done : Bool;
	@:optional
	var value : T;
};