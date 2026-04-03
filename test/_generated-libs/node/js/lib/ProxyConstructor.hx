package js.lib;

typedef ProxyConstructor = {
	/**
		Creates a revocable Proxy object.
	**/
	function revocable<T:(Dynamic)>(target:T, handler:js.lib.Proxy.ProxyHandler<T>):{
		var proxy : T;
		dynamic function revoke():Void;
	};
};