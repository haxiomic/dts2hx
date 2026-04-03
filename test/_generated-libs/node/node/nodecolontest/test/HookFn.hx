package node.nodecolontest.test;

/**
	The hook function. The first argument is the context in which the hook is called.
	If the hook uses callbacks, the callback function is passed as the second argument.
**/
typedef HookFn = (c:ts.AnyOf2<TestContext, SuiteContext>, done:ts.AnyOf2<() -> Void, (result:Dynamic) -> Void>) -> Dynamic;