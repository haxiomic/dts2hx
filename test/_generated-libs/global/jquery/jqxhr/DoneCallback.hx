package global.jquery.jqxhr;
typedef DoneCallback<TResolve, TjqXHR> = {
	@:selfCall
	function call(t:TResolve, u:String, v:TjqXHR, r:haxe.extern.Rest<Any>):Void;
};