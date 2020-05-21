package three;

@:jsRequire("three", "Uniform") extern class Uniform {
	@:overload(function(type:String, value:Dynamic):Uniform { })
	function new(value:Dynamic);
	var type : String;
	var value : Dynamic;
	@:native("dynamic")
	var dynamic_ : Bool;
	var onUpdateCallback : haxe.Constraints.Function;
	function onUpdate(callback:haxe.Constraints.Function):Uniform;
	static var prototype : Uniform;
}