package global.jquery.deferred;
extern typedef FailCallback<TReject> = {
	@:selfCall
	function call(args:std.Array<TReject>):Void;
};