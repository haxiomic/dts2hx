package unit.interface_;

typedef Interface = {
	@:overload(function<T>(a:T, b:String):Interface { })
	@:selfCall
	function call_(array:Array<Interface>):Dynamic;
	var field : Array<Dynamic>;
	function exampleMethod(a:Float):Void;
	@:optional
	function exampleOptionalMethod(a:Float):Void;
	/**
		this method is named to clash with the special generated `call()` method used for call signatures
	**/
	function call(b:Bool):Dynamic;
};