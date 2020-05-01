package global.jquery.deferred;
typedef ProgressCallback<TNotify> = {
	@:selfCall
	function call(args:haxe.extern.Rest<TNotify>):Void;
};