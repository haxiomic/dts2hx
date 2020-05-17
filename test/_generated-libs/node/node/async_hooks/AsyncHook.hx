package node.async_hooks;

typedef AsyncHook = {
	/**
		Enable the callbacks for a given AsyncHook instance. If no callbacks are provided enabling is a noop.
	**/
	function enable():AsyncHook;
	/**
		Disable the callbacks for a given AsyncHook instance from the global pool of AsyncHook callbacks to be executed. Once a hook has been disabled it will not be called again until enabled.
	**/
	function disable():AsyncHook;
};