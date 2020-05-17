package node.child_process;

typedef ExecFileSyncOptionsWithBufferEncoding = {
	var encoding : String;
	@:optional
	var input : ts.AnyOf12<String, global.Buffer, js.lib.Uint8Array, js.lib.Uint8ClampedArray, js.lib.Uint16Array, js.lib.Uint32Array, js.lib.Int8Array, js.lib.Int16Array, js.lib.Int32Array, js.lib.Float32Array, js.lib.Float64Array, js.lib.DataView>;
	@:optional
	var stdio : ts.AnyOf2<String, Array<Null<ts.AnyOf3<Float, node.stream.Stream, String>>>>;
	@:optional
	var killSignal : ts.AnyOf2<String, Float>;
	@:optional
	var maxBuffer : Float;
	@:optional
	var shell : ts.AnyOf2<String, Bool>;
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