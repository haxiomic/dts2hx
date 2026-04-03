package node.module.module;

/**
	The `initialize` hook provides a way to define a custom function that runs in
	the hooks thread when the hooks module is initialized. Initialization happens
	when the hooks module is registered via
	{@link
	register
	}
	.
	
	This hook can receive data from a
	{@link
	register
	}
	invocation, including
	ports and other transferable objects. The return value of `initialize` can be a
	`Promise`, in which case it will be awaited before the main application thread
	execution resumes.
**/
typedef InitializeHook<Data> = (data:Data) -> js.lib.Promise<ts.Undefined>;