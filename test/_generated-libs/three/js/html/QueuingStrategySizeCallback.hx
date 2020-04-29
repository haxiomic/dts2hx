package js.html;
extern typedef QueuingStrategySizeCallback<T> = {
	@:selfCall
	function call(chunk:T):Float;
};