package ts.html;
extern typedef QueuingStrategy<T> = {
	@:optional
	var highWaterMark : Float;
	@:optional
	var size : QueuingStrategySizeCallback<T>;
};