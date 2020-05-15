package global;
typedef NodeModule = {
	var exports : Dynamic;
	var require : NodeRequireFunction;
	var id : String;
	var filename : String;
	var loaded : Bool;
	var parent : Null<NodeModule>;
	var children : Array<NodeModule>;
	var paths : Array<String>;
};