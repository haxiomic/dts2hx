package unit.interface_;
extern interface Interface {
	var field : Array<Any>;
	function exampleMethod(a:Float):Void;
	@:optional
	function exampleOptionalMethod(a:Float):Void;
}