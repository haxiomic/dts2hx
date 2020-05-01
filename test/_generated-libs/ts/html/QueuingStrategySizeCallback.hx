package ts.html;
typedef QueuingStrategySizeCallback<T> = {
	@:selfCall
	function call(chunk:T):Float;
};