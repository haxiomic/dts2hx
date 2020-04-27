package node.fs;
/**
	Asynchronously writes `buffer` to the file referenced by the supplied file descriptor.
	
	
	
	Asynchronously writes `buffer` to the file referenced by the supplied file descriptor.
	
	
	
	Asynchronously writes `buffer` to the file referenced by the supplied file descriptor.
	
	
	
	Asynchronously writes `buffer` to the file referenced by the supplied file descriptor.
	
	
	
	Asynchronously writes `string` to the file referenced by the supplied file descriptor.
	
	
	
	Asynchronously writes `string` to the file referenced by the supplied file descriptor.
	
	
	
	Asynchronously writes `string` to the file referenced by the supplied file descriptor.
**/
@:jsRequire("fs", "write") @valueModuleOnly extern class Write {
	/**
		Asynchronously writes `buffer` to the file referenced by the supplied file descriptor.
		
		
		
		Asynchronously writes `string` to the file referenced by the supplied file descriptor.
	**/
	@:overload(function(fd:Float, string:Any, ?position:Float, ?encoding:String):js.lib.Promise<{ var bytesWritten : Float; var buffer : String; }> { })
	static function __promisify__<TBuffer:(haxe.extern.EitherType<global.Buffer, haxe.extern.EitherType<js.lib.Uint8Array, haxe.extern.EitherType<js.lib.Uint8ClampedArray, haxe.extern.EitherType<js.lib.Uint16Array, haxe.extern.EitherType<js.lib.Uint32Array, haxe.extern.EitherType<js.lib.Int8Array, haxe.extern.EitherType<js.lib.Int16Array, haxe.extern.EitherType<js.lib.Int32Array, haxe.extern.EitherType<js.lib.Float32Array, haxe.extern.EitherType<js.lib.Float64Array, js.lib.DataView>>>>>>>>>>)>(fd:Float, ?buffer:TBuffer, ?offset:Float, ?length:Float, ?position:Float):js.lib.Promise<{ var bytesWritten : Float; var buffer : TBuffer; }>;
}