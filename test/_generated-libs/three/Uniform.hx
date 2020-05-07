package three;
@:jsRequire("three", "Uniform") extern class Uniform {
	@:overload(function(type:String, value:Dynamic):Uniform { })
	function new(value:Dynamic);
	var type : String;
	var value : Dynamic;
	@:native("dynamic")
	var dynamic_ : Bool;
	var onUpdateCallback : ts.lib.Function;
	function onUpdate(callback:ts.lib.Function):Uniform;
}