package unit.functions.functions;

typedef CallableInterface = {
	@:overload(function(x:Float):String { })
	@:selfCall
	function call(x:String):Float;
	var field : String;
};