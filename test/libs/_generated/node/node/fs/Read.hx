package node.fs;
/**
	Asynchronously reads data from the file referenced by the supplied file descriptor.
**/
@:jsRequire("fs", "read") extern class Read {
	static function __promisify__<TBuffer:(haxe.extern.EitherType<global.Buffer, haxe.extern.EitherType<js.lib.Uint8Array, haxe.extern.EitherType<js.lib.Uint8ClampedArray, haxe.extern.EitherType<js.lib.Uint16Array, haxe.extern.EitherType<js.lib.Uint32Array, haxe.extern.EitherType<js.lib.Int8Array, haxe.extern.EitherType<js.lib.Int16Array, haxe.extern.EitherType<js.lib.Int32Array, haxe.extern.EitherType<js.lib.Float32Array, haxe.extern.EitherType<js.lib.Float64Array, js.lib.DataView>>>>>>>>>>)>(fd:Float, buffer:TBuffer, offset:Float, length:Float, position:Null<Float>):js.lib.Promise<{ var bytesRead : Float; var buffer : TBuffer; }>;
}