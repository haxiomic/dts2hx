package global.jquery.jqxhr;
typedef FailCallback<TjqXHR> = {
	@:selfCall
	function call(t:TjqXHR, u:global.jquery.ajax.ErrorTextStatus, v:String, r:haxe.extern.Rest<Any>):Void;
};