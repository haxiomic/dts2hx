package three;
typedef LoaderHandler = {
	var handlers : Array<ts.AnyOf2<ts.lib.RegExp, AnyLoader>>;
	function add(regex:ts.lib.RegExp, loader:AnyLoader):Void;
	function get(file:String):Null<AnyLoader>;
};