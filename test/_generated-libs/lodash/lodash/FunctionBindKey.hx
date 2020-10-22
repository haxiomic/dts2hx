package lodash;

typedef FunctionBindKey = {
	@:selfCall
	function call(object:Dynamic, key:String, partials:haxe.extern.Rest<Dynamic>):(args:haxe.extern.Rest<Dynamic>) -> Dynamic;
	var placeholder : LoDashStatic;
};