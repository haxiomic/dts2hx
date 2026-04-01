package unit.interface_;

typedef InterfaceExtendsWithRedefinition = {
	/**
		Example construct signatures
	**/
	@:overload(function(b:Float, x:Bool):Interface { })
	function new(a:String);
	@:overload(function<T>(a:T, b:String):InterfaceExtendsWithRedefinition { })
	@:selfCall
	function call_(array:Array<InterfaceExtendsWithRedefinition>):Dynamic;
	var field : Array<Float>;
	function exampleMethod(a:Float):Void;
	@:optional
	function exampleOptionalMethod(a:Float):Void;
	/**
		this method is named to clash with the special generated `call()` method used for call signatures
	**/
	function call(b:Bool):Dynamic;
};