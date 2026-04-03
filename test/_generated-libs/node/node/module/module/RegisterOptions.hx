package node.module.module;

typedef RegisterOptions<Data> = {
	/**
		If you want to resolve `specifier` relative to a
		base URL, such as `import.meta.url`, you can pass that URL here. This
		property is ignored if the `parentURL` is supplied as the second argument.
	**/
	@:optional
	var parentURL : ts.AnyOf2<String, node.url.URL>;
	/**
		Any arbitrary, cloneable JavaScript value to pass into the
		{@link
		initialize
		}
		hook.
	**/
	@:optional
	var data : Data;
	/**
		[Transferable objects](https://nodejs.org/docs/latest-v20.x/api/worker_threads.html#portpostmessagevalue-transferlist)
		to be passed into the `initialize` hook.
	**/
	@:optional
	var transferList : Array<Dynamic>;
};