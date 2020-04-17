package unit.interface_;
extern interface Interface {
	@:overload(function<T>(a:T, b:String):Interface { })
	@:selfCall
	function call_(array:Array<Interface>):Any;
	var field : Array<Any>;
	function exampleMethod(a:Float):Void;
	@:optional
	function exampleOptionalMethod(a:Float):Void;
	/**
		this method is named to clash with the special generated `call()` method used for call signatures
	**/
	function call(b:Bool):Any;
}