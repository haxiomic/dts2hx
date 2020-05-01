package ts.html;
typedef QueuingStrategy<T> = {
	@:optional
	var highWaterMark : Float;
	@:optional
	var size : QueuingStrategySizeCallback<T>;
};