import build.modules.Gaps;

/**
	BUG: TS 6.0 TypedArray generics produce Iterable type param mismatch.
	Float32Array_<ArrayBuffer> references Iterable with too many type params.
	This test should compile but currently doesn't.
**/
class TestTypedArrayBug {
	static function main() {
		var u8 = Gaps.makeUint8Array([1, 2, 3]);
		Sys.println("Uint8Array length: " + u8.length);

		var f32 = Gaps.makeFloat32Array([1.5, 2.5]);
		Sys.println("Float32Array length: " + f32.length);

		Sys.println("TypedArray bug test: passed");
	}
}
