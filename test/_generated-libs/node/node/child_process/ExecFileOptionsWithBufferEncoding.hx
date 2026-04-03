package node.child_process;

typedef ExecFileOptionsWithBufferEncoding = {
	var encoding : Null<String>;
	@:optional
	var maxBuffer : Float;
	@:optional
	var killSignal : ts.AnyOf2<Float, String>;
	@:optional
	var windowsVerbatimArguments : Bool;
	@:optional
	var shell : ts.AnyOf2<String, Bool>;
	/**
		When provided the corresponding `AbortController` can be used to cancel an asynchronous action.
	**/
	@:optional
	var signal : js.html.AbortSignal;
	@:optional
	var windowsHide : Bool;
	@:optional
	var timeout : Float;
	@:optional
	var uid : Float;
	@:optional
	var gid : Float;
	@:optional
	var cwd : ts.AnyOf2<String, node.url.URL>;
	@:optional
	var env : global.nodejs.ProcessEnv;
};