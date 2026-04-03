package node.nodecolontest.test;

/**
	The hook function. The first argument is a `TestContext` object.
	If the hook uses callbacks, the callback function is passed as the second argument.
**/
typedef TestContextHookFn = (t:TestContext, done:ts.AnyOf2<() -> Void, (result:Dynamic) -> Void>) -> Dynamic;