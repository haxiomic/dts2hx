package three;

@:jsRequire("three", "AnimationUtils") @valueModuleOnly extern class AnimationUtils {
	static function arraySlice(array:Dynamic, from:Float, to:Float):Dynamic;
	static function convertArray(array:Dynamic, type:Dynamic, forceClone:Bool):Dynamic;
	static function isTypedArray(object:Dynamic):Bool;
	static function getKeyFrameOrder(times:Float):Array<Float>;
	static function sortedArray(values:Array<Dynamic>, stride:Float, order:Array<Float>):Array<Dynamic>;
	static function flattenJSON(jsonKeys:Array<String>, times:Array<Dynamic>, values:Array<Dynamic>, valuePropertyName:String):Void;
}