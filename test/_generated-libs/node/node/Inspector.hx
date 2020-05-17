package node;

/**
	The inspector module provides an API for interacting with the V8 inspector.
**/
@:jsRequire("inspector") @valueModuleOnly extern class Inspector {
	/**
		Activate inspector on host and port. Equivalent to node --inspect=[[host:]port], but can be done programatically after node has started.
		If wait is true, will block until a client has connected to the inspect port and flow control has been passed to the debugger client.
	**/
	static function open(?port:Float, ?host:String, ?wait:Bool):Void;
	/**
		Deactivate the inspector. Blocks until there are no active connections.
	**/
	static function close():Void;
	/**
		Return the URL of the active inspector, or undefined if there is none.
	**/
	static function url():String;
}