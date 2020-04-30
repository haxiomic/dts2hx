package global.jquery.jqxhr;
extern typedef FailCallback<TjqXHR> = {
	@:selfCall
	function call(t:TjqXHR, u:String, v:String, r:std.Array<Any>):Void;
};