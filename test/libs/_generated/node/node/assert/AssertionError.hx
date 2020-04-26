package node.assert;
@:jsRequire("assert", "AssertionError") extern class AssertionError implements js.lib.Error {
	function new(?options:{ @:optional
	var message : String; @:optional
	var actual : Any; @:optional
	var expected : Any; @:native("operator")
	@:optional
	var operator_ : String; @:optional
	var stackStartFn : js.lib.Function; });
	var name : String;
	var message : String;
	var actual : Any;
	var expected : Any;
	@:native("operator")
	var operator_ : String;
	var generatedMessage : Bool;
	var code : String;
}