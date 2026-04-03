package node.child_process;

typedef ExecSyncOptionsWithStringEncoding = {
	var encoding : global.nodejs.BufferEncoding;
	@:optional
	var shell : String;
	@:optional
	var input : ts.AnyOf13<String, js.lib.DataView_<js.lib.ArrayBufferLike>, js.lib.Int8Array_<js.lib.ArrayBufferLike>, js.lib.Uint8Array_<js.lib.ArrayBufferLike>, js.lib.Uint8ClampedArray_<js.lib.ArrayBufferLike>, js.lib.Int16Array_<js.lib.ArrayBufferLike>, js.lib.Uint16Array_<js.lib.ArrayBufferLike>, js.lib.Int32Array_<js.lib.ArrayBufferLike>, js.lib.Uint32Array_<js.lib.ArrayBufferLike>, js.lib.Float32Array_<js.lib.ArrayBufferLike>, js.lib.Float64Array_<js.lib.ArrayBufferLike>, js.lib.BigInt64Array<js.lib.ArrayBufferLike>, js.lib.BigUint64Array<js.lib.ArrayBufferLike>>;
	/**
		Can be set to 'pipe', 'inherit, or 'ignore', or an array of these strings.
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
	var killSignal : ts.AnyOf2<Float, String>;
	@:optional
	var maxBuffer : Float;
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