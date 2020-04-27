package js.html;
extern interface QueuingStrategy<T> {
	@:optional
	var highWaterMark : Float;
	@:optional
	var size : QueuingStrategySizeCallback<T>;
}