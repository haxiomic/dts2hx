package ts.lib;
/**
	Returns an array of MimeType instances, each of which contains information about a supported browser plugins. This object is returned by NavigatorPlugins.mimeTypes.
**/
typedef IMimeTypeArray = {
	final length : Float;
	function item(index:Float):Null<ts.html.IMimeType>;
	function namedItem(name:String):Null<ts.html.IMimeType>;
};