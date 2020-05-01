package global.jquery.jqxhr;
typedef FailCallback<TjqXHR> = {
	@:selfCall
	function call(t:TjqXHR, u:String, v:String, r:haxe.extern.Rest<Any>):Void;
};