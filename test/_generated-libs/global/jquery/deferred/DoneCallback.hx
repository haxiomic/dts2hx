package global.jquery.deferred;
typedef DoneCallback<TResolve> = {
	@:selfCall
	function call(args:haxe.extern.Rest<TResolve>):Void;
};