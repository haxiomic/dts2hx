package unit.interface_;
extern interface InterfaceExtendsWithRedefinition {
	@:overload(function<T>(a:T, b:String):InterfaceExtendsWithRedefinition { })
	@:selfCall
	function call(array:Array<Interface>):Any;
	var field : Array<Float>;
	function exampleMethod(a:Float):Void;
	@:optional
	function exampleOptionalMethod(a:Float):Void;
	/**
		this method is named to clash with the special generated `call()` method used for call signatures
	**/
	function call(b:Bool):Any;
}