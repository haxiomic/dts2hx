package node.assert;
@:jsRequire("assert", "AssertionError") extern class AssertionError implements js.lib.Error {
	function new(?options:{ @:optional
	var message : Null<String>; @:optional
	var actual : Any; @:optional
	var expected : Any; @:native("operator")
	@:optional
	var operator_ : Null<String>; @:optional
	var stackStartFn : Null<js.lib.Function>; });
	var name : String;
	var message : String;
	var actual : Any;
	var expected : Any;
	@:native("operator")
	var operator_ : String;
	var generatedMessage : Bool;
	var code : String;
}