package node.inspector.debugger;

/**
	Scope description.
**/
typedef Scope = {
	/**
		Scope type.
	**/
	var type : String;
	/**
		Object representing the scope. For <code>global</code> and <code>with</code> scopes it represents the actual object; for the rest of the scopes, it is artificial transient object enumerating scope variables as its properties.
	**/
	var object : node.inspector.runtime.RemoteObject;
	@:optional
	var name : String;
	/**
		Location in the source code where scope starts
	**/
	@:optional
	var startLocation : Location;
	/**
		Location in the source code where scope ends
	**/
	@:optional
	var endLocation : Location;
};