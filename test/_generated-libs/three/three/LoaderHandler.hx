package three;

typedef LoaderHandler = {
	var handlers : Array<ts.AnyOf2<js.lib.RegExp, AnyLoader>>;
	function add(regex:js.lib.RegExp, loader:AnyLoader):Void;
	function get(file:String):Null<AnyLoader>;
};