package global.three;

@:native("THREE.LoaderUtils") extern class LoaderUtils {
	static function decodeText(array:TypedArray):String;
	static function extractUrlBase(url:String):String;
}