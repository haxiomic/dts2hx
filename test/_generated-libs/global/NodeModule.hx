package global;
extern typedef NodeModule = {
	var exports : Any;
	var require : NodeRequireFunction;
	var id : String;
	var filename : String;
	var loaded : Bool;
	var parent : Null<NodeModule>;
	var children : std.Array<NodeModule>;
	var paths : std.Array<String>;
};