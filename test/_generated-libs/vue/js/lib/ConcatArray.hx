package js.lib;

typedef ConcatArray<T> = {
	final length : Float;
	function join(?separator:String):String;
	function slice(?start:Float, ?end:Float):Array<T>;
};