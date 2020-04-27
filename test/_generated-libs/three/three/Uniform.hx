package three;
@:jsRequire("three", "Uniform") extern class Uniform {
	@:overload(function(type:String, value:Any):Uniform { })
	function new(value:Any);
	var type : String;
	var value : Any;
	@:native("dynamic")
	var dynamic_ : Bool;
	var onUpdateCallback : js.lib.Function;
	function onUpdate(callback:js.lib.Function):Uniform;
}