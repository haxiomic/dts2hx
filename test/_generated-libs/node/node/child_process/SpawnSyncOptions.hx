package node.child_process;

typedef SpawnSyncOptions = {
	@:optional
	var argv0 : String;
	@:optional
	var input : ts.AnyOf12<String, js.lib.DataView_<js.lib.ArrayBufferLike>, global.Buffer, js.lib.Uint8Array_<js.lib.ArrayBufferLike>, js.lib.Uint8ClampedArray_<js.lib.ArrayBufferLike>, js.lib.Uint16Array_<js.lib.ArrayBufferLike>, js.lib.Uint32Array_<js.lib.ArrayBufferLike>, js.lib.Int8Array_<js.lib.ArrayBufferLike>, js.lib.Int16Array_<js.lib.ArrayBufferLike>, js.lib.Int32Array_<js.lib.ArrayBufferLike>, js.lib.Float32Array_<js.lib.ArrayBufferLike>, js.lib.Float64Array_<js.lib.ArrayBufferLike>>;
	@:optional
	var stdio : StdioOptions;
	@:optional
	var killSignal : ts.AnyOf2<String, Float>;
	@:optional
	var maxBuffer : Float;
	@:optional
	var encoding : String;
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
	var cwd : String;
	@:optional
	var env : global.nodejs.ProcessEnv;
};