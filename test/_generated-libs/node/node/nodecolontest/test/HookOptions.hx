package node.nodecolontest.test;

/**
	Configuration options for hooks.
**/
typedef HookOptions = {
	/**
		Allows aborting an in-progress hook.
	**/
	@:optional
	var signal : js.html.AbortSignal;
	/**
		A number of milliseconds the hook will fail after. If unspecified, subtests inherit this
		value from their parent.
	**/
	@:optional
	var timeout : Float;
};