package js.html;

typedef ReadableStreamReadDoneResult<T> = {
	var done : Bool;
	var value : Null<T>;
};