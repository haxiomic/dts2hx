package js.html;

typedef ReadableStreamReadValueResult<T> = {
	var done : Bool;
	var value : T;
};