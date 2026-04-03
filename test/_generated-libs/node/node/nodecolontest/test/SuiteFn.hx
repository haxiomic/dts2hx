package node.nodecolontest.test;

/**
	The type of a suite test function. The argument to this function is a
	{@link
	SuiteContext
	}
	object.
**/
typedef SuiteFn = (s:SuiteContext) -> js.lib.Promise<ts.Undefined>;