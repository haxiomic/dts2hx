package node.nodecolontest.test;

typedef MockFunctionCallTypedef<F:(haxe.Constraints.Function), ReturnType, Args> = {
	/**
		An array of the arguments passed to the mock function.
	**/
	var arguments : Args;
	/**
		If the mocked function threw then this property contains the thrown value.
	**/
	var error : Any;
	/**
		The value returned by the mocked function.
		
		If the mocked function threw, it will be `undefined`.
	**/
	var result : Null<ReturnType>;
	/**
		An `Error` object whose stack can be used to determine the callsite of the mocked function invocation.
	**/
	var stack : js.lib.Error;
	/**
		If the mocked function is a constructor, this field contains the class being constructed.
		Otherwise this will be `undefined`.
	**/
	var target : Dynamic;
	/**
		The mocked function's `this` value.
	**/
	@:native("this")
	var this_ : Any;
};