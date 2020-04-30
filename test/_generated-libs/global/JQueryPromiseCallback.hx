package global;
extern typedef JQueryPromiseCallback<T> = {
	@:selfCall
	function call(?value:T, args:std.Array<Any>):Void;
};