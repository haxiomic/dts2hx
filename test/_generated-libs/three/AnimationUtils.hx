package three;
@:jsRequire("three", "AnimationUtils") @valueModuleOnly extern class AnimationUtils {
	static function arraySlice(array:Dynamic, from:Float, to:Float):Dynamic;
	static function convertArray(array:Dynamic, type:Dynamic, forceClone:Bool):Dynamic;
	static function isTypedArray(object:Dynamic):Bool;
	static function getKeyFrameOrder(times:Float):std.Array<Float>;
	static function sortedArray(values:std.Array<Dynamic>, stride:Float, order:std.Array<Float>):std.Array<Dynamic>;
	static function flattenJSON(jsonKeys:std.Array<String>, times:std.Array<Dynamic>, values:std.Array<Dynamic>, valuePropertyName:String):Void;
}