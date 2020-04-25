package node.inspector.debugger;
/**
	Scope description.
**/
extern interface Scope {
	/**
		Scope type.
	**/
	var type : String;
	/**
		Object representing the scope. For `global` and `with` scopes it represents the actual
		object; for the rest of the scopes, it is artificial transient object enumerating scope
		variables as its properties.
	**/
	var object : node.inspector.runtime.RemoteObject;
	@:optional
	var name : Null<String>;
	/**
		Location in the source code where scope starts
	**/
	@:optional
	var startLocation : Null<Location>;
	/**
		Location in the source code where scope ends
	**/
	@:optional
	var endLocation : Null<Location>;
}