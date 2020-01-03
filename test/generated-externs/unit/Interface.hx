package unit;



@:native('Interface')
extern interface Interface {
	function exampleMethod(a: Float): Void;
	@:optional
	function exampleOptionalMethod(a: Float): Void;
}

