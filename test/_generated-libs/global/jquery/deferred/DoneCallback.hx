package global.jquery.deferred;
extern typedef DoneCallback<TResolve> = {
	@:selfCall
	function call(args:haxe.extern.Rest<TResolve>):Void;
};