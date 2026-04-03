package node.child_process;

typedef SpawnSyncOptionsWithBufferEncoding = {
	@:optional
	var encoding : String;
	@:optional
	var input : ts.AnyOf13<String, js.lib.DataView_<js.lib.ArrayBufferLike>, js.lib.Int8Array_<js.lib.ArrayBufferLike>, js.lib.Uint8Array_<js.lib.ArrayBufferLike>, js.lib.Uint8ClampedArray_<js.lib.ArrayBufferLike>, js.lib.Int16Array_<js.lib.ArrayBufferLike>, js.lib.Uint16Array_<js.lib.ArrayBufferLike>, js.lib.Int32Array_<js.lib.ArrayBufferLike>, js.lib.Uint32Array_<js.lib.ArrayBufferLike>, js.lib.Float32Array_<js.lib.ArrayBufferLike>, js.lib.Float64Array_<js.lib.ArrayBufferLike>, js.lib.BigInt64Array<js.lib.ArrayBufferLike>, js.lib.BigUint64Array<js.lib.ArrayBufferLike>>;
	@:optional
	var maxBuffer : Float;
	@:optional
	var argv0 : String;
	/**
		Can be set to 'pipe', 'inherit', 'overlapped', or 'ignore', or an array of these strings.
		If passed as an array, the first element is used for `stdin`, the second for
		`stdout`, and the third for `stderr`. A fourth element can be used to
		specify the `stdio` behavior beyond the standard streams. See
		{@link
		ChildProcess.stdio
		}
		for more information.
	**/
	@:optional
	var stdio : StdioOptions;
	@:optional
	var shell : ts.AnyOf2<String, Bool>;
	@:optional
	var windowsVerbatimArguments : Bool;
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
	/**
		Specify the kind of serialization used for sending messages between processes.
	**/
	@:optional
	var serialization : SerializationType;
	/**
		The signal value to be used when the spawned process will be killed by the abort signal.
	**/
	@:optional
	var killSignal : ts.AnyOf2<Float, String>;
	/**
		When provided the corresponding `AbortController` can be used to cancel an asynchronous action.
	**/
	@:optional
	var signal : js.html.AbortSignal;
};