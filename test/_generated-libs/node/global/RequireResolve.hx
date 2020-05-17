package global;

typedef RequireResolve = {
	@:selfCall
	function call(id:String, ?options:{ @:optional var paths : Array<String>; }):String;
	function paths(request:String):Null<Array<String>>;
};