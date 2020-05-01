package ts.html;
typedef ReadableStreamReadResult<T> = {
	var done : Bool;
	var value : T;
};