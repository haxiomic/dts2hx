package js.html;

typedef QueuingStrategy<T> = {
	@:optional
	var highWaterMark : Float;
	@:optional
	dynamic function size(chunk:T):Float;
};