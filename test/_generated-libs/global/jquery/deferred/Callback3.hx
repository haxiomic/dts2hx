package global.jquery.deferred;
typedef Callback3<T, U, V> = {
	@:selfCall
	function call(t:T, u:U, v:V, r:haxe.extern.Rest<Any>):Void;
};