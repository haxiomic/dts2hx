package unit.interface_;
extern typedef InterfaceExtendsWithRedefinition = {
	@:overload(function<T>(a:T, b:String):InterfaceExtendsWithRedefinition { })
	@:selfCall
	function call_(array:std.Array<InterfaceExtendsWithRedefinition>):Dynamic;
	var field : std.Array<Float>;
	function exampleMethod(a:Float):Void;
	@:optional
	function exampleOptionalMethod(a:Float):Void;
	/**
		this method is named to clash with the special generated `call()` method used for call signatures
	**/
	function call(b:Bool):Dynamic;
};