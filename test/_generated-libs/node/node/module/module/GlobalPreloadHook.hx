package node.module.module;

/**
	Sometimes it might be necessary to run some code inside of the same global
	scope that the application runs in. This hook allows the return of a string
	that is run as a sloppy-mode script on startup.
**/
typedef GlobalPreloadHook = (context:GlobalPreloadContext) -> String;