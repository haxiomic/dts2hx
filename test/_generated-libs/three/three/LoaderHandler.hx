package three;
extern typedef LoaderHandler = {
	var handlers : std.Array<haxe.extern.EitherType<js.lib.IRegExp, AnyLoader>>;
	function add(regex:js.lib.IRegExp, loader:AnyLoader):Void;
	function get(file:String):Null<AnyLoader>;
};