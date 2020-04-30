package three;
extern typedef LoaderHandler = {
	var handlers : std.Array<haxe.extern.EitherType<ts.lib.IRegExp, AnyLoader>>;
	function add(regex:ts.lib.IRegExp, loader:AnyLoader):Void;
	function get(file:String):Null<AnyLoader>;
};