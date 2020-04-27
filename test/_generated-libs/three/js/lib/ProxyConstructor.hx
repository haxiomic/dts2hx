package js.lib;
extern typedef ProxyConstructor = { function revocable<T:(Any)>(target:T, handler:ProxyHandler<T>):{ var proxy : T; var revoke : () -> Void; }; };