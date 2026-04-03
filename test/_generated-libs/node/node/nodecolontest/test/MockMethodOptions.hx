package node.nodecolontest.test;

typedef MockMethodOptions = {
	/**
		If `true`, `object[methodName]` is treated as a getter.
		This option cannot be used with the `setter` option.
	**/
	@:optional
	var getter : Bool;
	/**
		If `true`, `object[methodName]` is treated as a setter.
		This option cannot be used with the `getter` option.
	**/
	@:optional
	var setter : Bool;
	/**
		The number of times that the mock will use the behavior of `implementation`.
		Once the mock function has been called `times` times,
		it will automatically restore the behavior of `original`.
		This value must be an integer greater than zero.
	**/
	@:optional
	var times : Float;
};