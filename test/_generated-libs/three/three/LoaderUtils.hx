package three;

@:jsRequire("three", "LoaderUtils") extern class LoaderUtils {
	static function decodeText(array:TypedArray):String;
	static function extractUrlBase(url:String):String;
}