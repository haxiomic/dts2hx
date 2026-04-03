package node.nodecolontest.test;

/**
	The type of a function passed to
	{@link
	test
	}
	. The first argument to this function is a
	{@link
	TestContext
	}
	object.
	If the test uses callbacks, the callback function is passed as the second argument.
**/
typedef TestFn = (t:TestContext, done:ts.AnyOf2<() -> Void, (result:Dynamic) -> Void>) -> js.lib.Promise<ts.Undefined>;