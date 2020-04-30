package global.jquery.deferred;
extern typedef AlwaysCallback<TResolve, TReject> = {
	@:selfCall
	function call(args:std.Array<haxe.extern.EitherType<TResolve, TReject>>):Void;
};