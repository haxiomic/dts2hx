package global._;

typedef FunctionBind = {
	@:selfCall
	function call(func:(args:haxe.extern.Rest<Dynamic>) -> Dynamic, thisArg:Dynamic, partials:haxe.extern.Rest<Dynamic>):(args:haxe.extern.Rest<Dynamic>) -> Dynamic;
	var placeholder : LoDashStatic;
};