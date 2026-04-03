package node.stream.web;

typedef ReadableStreamReadValueResult<T> = {
	var done : Bool;
	var value : T;
};