package global;

typedef NodeModule = {
	var exports : Dynamic;
	dynamic function require(id:String):Dynamic;
	var id : String;
	var filename : String;
	var loaded : Bool;
	var parent : Null<NodeModule>;
	var children : Array<NodeModule>;
	var paths : Array<String>;
};