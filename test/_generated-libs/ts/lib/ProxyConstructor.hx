package ts.lib;
extern typedef ProxyConstructor = {
	function revocable<T>(target:T, handler:ProxyHandler<T>):{
		var proxy : T;
		var revoke : () -> Void;
	};
};