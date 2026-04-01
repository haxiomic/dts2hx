package unit.typedef_patterns.typedefpatterns;

typedef CallableAndConstructable = {
	@:selfCall
	function call(x:String):Float;
	var type : String;
};