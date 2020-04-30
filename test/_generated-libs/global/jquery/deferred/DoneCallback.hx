package global.jquery.deferred;
extern typedef DoneCallback<TResolve> = {
	@:selfCall
	function call(args:std.Array<TResolve>):Void;
};