package ts.html;
/**
	Returns an array of MimeType instances, each of which contains information about a supported browser plugins. This object is returned by NavigatorPlugins.mimeTypes.
**/
@:native("MimeTypeArray") extern class MimeTypeArray {
	function new();
	final length : Float;
	function item(index:Float):Null<MimeType>;
	function namedItem(name:String):Null<MimeType>;
	static var prototype : MimeTypeArray;
}