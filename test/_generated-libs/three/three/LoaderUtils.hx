package three;

@:jsRequire("three", "LoaderUtils") extern class LoaderUtils {
	function new();
	static var prototype : LoaderUtils;
	static function decodeText(array:TypedArray):String;
	static function extractUrlBase(url:String):String;
}