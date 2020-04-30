package global.jquery.deferred;
extern typedef Callback3<T, U, V> = {
	@:selfCall
	function call(t:T, u:U, v:V, r:std.Array<Any>):Void;
};