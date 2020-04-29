package js.html;
extern typedef QueuingStrategy<T> = {
	@:optional
	var highWaterMark : Float;
	@:optional
	var size : QueuingStrategySizeCallback<T>;
};