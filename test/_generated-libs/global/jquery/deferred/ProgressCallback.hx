package global.jquery.deferred;
extern typedef ProgressCallback<TNotify> = {
	@:selfCall
	function call(args:haxe.extern.Rest<TNotify>):Void;
};