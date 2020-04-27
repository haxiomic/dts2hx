package js.html;
extern interface QueuingStrategySizeCallback<T> {
	@:selfCall
	function call(chunk:T):Float;
}