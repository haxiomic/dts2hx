package global.jquery.deferred;
typedef FailCallback<TReject> = {
	@:selfCall
	function call(args:haxe.extern.Rest<TReject>):Void;
};