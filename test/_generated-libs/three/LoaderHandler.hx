package three;
typedef LoaderHandler = {
	var handlers : Array<ts.AnyOf2<ts.lib.IRegExp, AnyLoader>>;
	function add(regex:ts.lib.IRegExp, loader:AnyLoader):Void;
	function get(file:String):Null<AnyLoader>;
};