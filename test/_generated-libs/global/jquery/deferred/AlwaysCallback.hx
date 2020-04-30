package global.jquery.deferred;
extern typedef AlwaysCallback<TResolve, TReject> = {
	@:selfCall
	function call(args:haxe.extern.Rest<haxe.extern.EitherType<TResolve, TReject>>):Void;
};