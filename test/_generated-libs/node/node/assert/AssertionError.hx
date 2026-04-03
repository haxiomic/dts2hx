package node.assert;

/**
	Indicates the failure of an assertion. All errors thrown by the `node:assert` module will be instances of the `AssertionError` class.
**/
@:jsRequire("assert", "AssertionError") extern class AssertionError extends js.lib.Error {
	function new(?options:{ /** If provided, the error message is set to this value. **/ @:optional var message : String; /** The `actual` property on the error instance. **/ @:optional var actual : Any; /** The `expected` property on the error instance. **/ @:optional var expected : Any; /** The `operator` property on the error instance. **/ @:optional @:native("operator") var operator_ : String; /** If provided, the generated stack trace omits frames before this function. **/ @:optional var stackStartFn : haxe.Constraints.Function; });
	/**
		Set to the `actual` argument for methods such as
		{@link
		assert.strictEqual()
		}
		.
	**/
	var actual : Any;
	/**
		Set to the `expected` argument for methods such as
		{@link
		assert.strictEqual()
		}
		.
	**/
	var expected : Any;
	/**
		Set to the passed in operator value.
	**/
	@:native("operator")
	var operator_ : String;
	/**
		Indicates if the message was auto-generated (`true`) or not.
	**/
	var generatedMessage : Bool;
	/**
		Value is always `ERR_ASSERTION` to show that the error is an assertion error.
	**/
	var code : String;
	static var prototype : AssertionError;
}