package js.html;
extern typedef PromiseRejectionEventInit = EventInit & { var promise : js.lib.Promise<Any>; @:optional
	var reason : Any; };