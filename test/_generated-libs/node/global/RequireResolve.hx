package global;
extern typedef RequireResolve = {
	@:selfCall
	function call(id:String, ?options:{ @:optional var paths : std.Array<String>; }):String;
	function paths(request:String):Null<std.Array<String>>;
};