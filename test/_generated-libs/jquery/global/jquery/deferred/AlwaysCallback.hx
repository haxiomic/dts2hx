package global.jquery.deferred;
typedef AlwaysCallback<TResolve, TReject> = {
	@:selfCall
	function call(args:haxe.extern.Rest<ts.AnyOf2<TResolve, TReject>>):Void;
};