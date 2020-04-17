package js.lib;
extern interface ConcatArray<T> {
	var length : Float;
	function join(?separator:String):String;
	function slice(?start:Float, ?end:Float):Array<T>;
}