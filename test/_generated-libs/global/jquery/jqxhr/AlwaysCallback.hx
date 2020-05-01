package global.jquery.jqxhr;
typedef AlwaysCallback<TResolve, TjqXHR> = {
	@:selfCall
	function call(t:ts.AnyOf2<TResolve, TjqXHR>, u:String, v:ts.AnyOf2<String, TjqXHR>, r:haxe.extern.Rest<Any>):Void;
};