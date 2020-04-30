package global.jquery.deferred;
extern typedef FailCallback<TReject> = {
	@:selfCall
	function call(args:haxe.extern.Rest<TReject>):Void;
};