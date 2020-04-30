package three;
@:jsRequire("three", "AnimationUtils") @valueModuleOnly extern class AnimationUtils {
	static function arraySlice(array:Any, from:Float, to:Float):Any;
	static function convertArray(array:Any, type:Any, forceClone:Bool):Any;
	static function isTypedArray(object:Any):Bool;
	static function getKeyFrameOrder(times:Float):std.Array<Float>;
	static function sortedArray(values:std.Array<Any>, stride:Float, order:std.Array<Float>):std.Array<Any>;
	static function flattenJSON(jsonKeys:std.Array<String>, times:std.Array<Any>, values:std.Array<Any>, valuePropertyName:String):Void;
}