package three;

@:jsRequire("three", "ImageUtils") @valueModuleOnly extern class ImageUtils {
	static function loadTexture(url:String, ?mapping:Mapping, ?onLoad:(texture:Texture) -> Void, ?onError:(message:String) -> Void):Texture;
	static function loadTextureCube(array:Array<String>, ?mapping:Mapping, ?onLoad:(texture:Texture) -> Void, ?onError:(message:String) -> Void):Texture;
	static var crossOrigin : String;
}