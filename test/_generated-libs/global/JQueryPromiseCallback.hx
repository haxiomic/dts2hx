package global;
typedef JQueryPromiseCallback<T> = {
	@:selfCall
	function call(?value:T, args:haxe.extern.Rest<Dynamic>):Void;
};