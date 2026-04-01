package unit.typedef_patterns.typedefpatterns;

typedef CallableWithProps = {
	@:selfCall
	function call(input:String):Bool;
	var version : String;
	function configure(opts:{ var debug : Bool; }):Void;
};