package three;
@:jsRequire("three", "Uniform") extern class Uniform {
	@:overload(function(type:String, value:Any):Uniform { })
	function new(value:Any);
	var type : String;
	var value : Any;
	@:native("dynamic")
	var dynamic_ : Bool;
	var onUpdateCallback : ts.lib.IFunction;
	function onUpdate(callback:ts.lib.IFunction):Uniform;
}