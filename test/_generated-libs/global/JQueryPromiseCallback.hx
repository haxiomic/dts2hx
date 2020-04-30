package global;
extern typedef JQueryPromiseCallback<T> = {
	@:selfCall
	function call(?value:T, args:haxe.extern.Rest<Any>):Void;
};