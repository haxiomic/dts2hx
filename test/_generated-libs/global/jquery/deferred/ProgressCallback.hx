package global.jquery.deferred;
extern typedef ProgressCallback<TNotify> = {
	@:selfCall
	function call(args:std.Array<TNotify>):Void;
};