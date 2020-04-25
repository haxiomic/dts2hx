package global;
extern interface RequireResolve {
	@:selfCall
	function call(id:String, ?options:{ @:optional
	var paths : Null<std.Array<String>>; }):String;
	function paths(request:String):Null<std.Array<String>>;
}