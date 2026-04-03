package global;

/**
	Raw data is stored in instances of the Buffer class.
	A Buffer is similar to an array of integers but corresponds to a raw memory allocation outside the V8 heap.  A Buffer cannot be resized.
	Valid string encodings: 'ascii'|'utf8'|'utf16le'|'ucs2'(alias of 'utf16le')|'base64'|'base64url'|'binary'(deprecated)|'hex'
**/
typedef BufferConstructor = {
	/**
		Allocates a new `Buffer` using an `array` of bytes in the range `0` – `255`.
		Array entries outside that range will be truncated to fit into it.
		
		```js
		import { Buffer } from 'node:buffer';
		
		// Creates a new Buffer containing the UTF-8 bytes of the string 'buffer'.
		const buf = Buffer.from([0x62, 0x75, 0x66, 0x66, 0x65, 0x72]);
		```
		
		If `array` is an `Array`-like object (that is, one with a `length` property of
		type `number`), it is treated as if it is an array, unless it is a `Buffer` or
		a `Uint8Array`. This means all other `TypedArray` variants get treated as an
		`Array`. To create a `Buffer` from the bytes backing a `TypedArray`, use
		`Buffer.copyBytesFrom()`.
		
		A `TypeError` will be thrown if `array` is not an `Array` or another type
		appropriate for `Buffer.from()` variants.
		
		`Buffer.from(array)` and `Buffer.from(string)` may also use the internal
		`Buffer` pool like `Buffer.allocUnsafe()` does.
		
		This creates a view of the `ArrayBuffer` without copying the underlying
		memory. For example, when passed a reference to the `.buffer` property of a
		`TypedArray` instance, the newly created `Buffer` will share the same
		allocated memory as the `TypedArray`'s underlying `ArrayBuffer`.
		
		```js
		import { Buffer } from 'node:buffer';
		
		const arr = new Uint16Array(2);
		
		arr[0] = 5000;
		arr[1] = 4000;
		
		// Shares memory with `arr`.
		const buf = Buffer.from(arr.buffer);
		
		console.log(buf);
		// Prints: <Buffer 88 13 a0 0f>
		
		// Changing the original Uint16Array changes the Buffer also.
		arr[1] = 6000;
		
		console.log(buf);
		// Prints: <Buffer 88 13 70 17>
		```
		
		The optional `byteOffset` and `length` arguments specify a memory range within
		the `arrayBuffer` that will be shared by the `Buffer`.
		
		```js
		import { Buffer } from 'node:buffer';
		
		const ab = new ArrayBuffer(10);
		const buf = Buffer.from(ab, 0, 2);
		
		console.log(buf.length);
		// Prints: 2
		```
		
		A `TypeError` will be thrown if `arrayBuffer` is not an `ArrayBuffer` or a
		`SharedArrayBuffer` or another type appropriate for `Buffer.from()`
		variants.
		
		It is important to remember that a backing `ArrayBuffer` can cover a range
		of memory that extends beyond the bounds of a `TypedArray` view. A new
		`Buffer` created using the `buffer` property of a `TypedArray` may extend
		beyond the range of the `TypedArray`:
		
		```js
		import { Buffer } from 'node:buffer';
		
		const arrA = Uint8Array.from([0x63, 0x64, 0x65, 0x66]); // 4 elements
		const arrB = new Uint8Array(arrA.buffer, 1, 2); // 2 elements
		console.log(arrA.buffer === arrB.buffer); // true
		
		const buf = Buffer.from(arrB.buffer);
		console.log(buf);
		// Prints: <Buffer 63 64 65 66>
		```
		
		Creates a new `Buffer` containing `string`. The `encoding` parameter identifies
		the character encoding to be used when converting `string` into bytes.
		
		```js
		import { Buffer } from 'node:buffer';
		
		const buf1 = Buffer.from('this is a tést');
		const buf2 = Buffer.from('7468697320697320612074c3a97374', 'hex');
		
		console.log(buf1.toString());
		// Prints: this is a tést
		console.log(buf2.toString());
		// Prints: this is a tést
		console.log(buf1.toString('latin1'));
		// Prints: this is a tÃ©st
		```
		
		A `TypeError` will be thrown if `string` is not a string or another type
		appropriate for `Buffer.from()` variants.
		
		`Buffer.from(string)` may also use the internal `Buffer` pool like
		`Buffer.allocUnsafe()` does.
	**/
	@:overload(function<TArrayBuffer:(node.buffer.WithImplicitCoercion<js.lib.ArrayBufferLike>)>(arrayBuffer:TArrayBuffer, ?byteOffset:Float, ?length:Float):Buffer<node.buffer.ImplicitArrayBuffer<TArrayBuffer>> { })
	@:overload(function(string:node.buffer.WithImplicitCoercion<String>, ?encoding:global.nodejs.BufferEncoding):Buffer<js.lib.ArrayBuffer> { })
	@:overload(function(arrayOrString:node.buffer.WithImplicitCoercion<ts.AnyOf2<String, js.lib.ArrayLike<Float>>>):Buffer<js.lib.ArrayBuffer> { })
	function from(array:node.buffer.WithImplicitCoercion<js.lib.ArrayLike<Float>>):Buffer<js.lib.ArrayBuffer>;
	/**
		Creates a new Buffer using the passed {data}
	**/
	function of(items:haxe.extern.Rest<Float>):Buffer<js.lib.ArrayBuffer>;
	/**
		Returns a new `Buffer` which is the result of concatenating all the `Buffer` instances in the `list` together.
		
		If the list has no items, or if the `totalLength` is 0, then a new zero-length `Buffer` is returned.
		
		If `totalLength` is not provided, it is calculated from the `Buffer` instances
		in `list` by adding their lengths.
		
		If `totalLength` is provided, it is coerced to an unsigned integer. If the
		combined length of the `Buffer`s in `list` exceeds `totalLength`, the result is
		truncated to `totalLength`.
		
		```js
		import { Buffer } from 'node:buffer';
		
		// Create a single `Buffer` from a list of three `Buffer` instances.
		
		const buf1 = Buffer.alloc(10);
		const buf2 = Buffer.alloc(14);
		const buf3 = Buffer.alloc(18);
		const totalLength = buf1.length + buf2.length + buf3.length;
		
		console.log(totalLength);
		// Prints: 42
		
		const bufA = Buffer.concat([buf1, buf2, buf3], totalLength);
		
		console.log(bufA);
		// Prints: <Buffer 00 00 00 00 ...>
		console.log(bufA.length);
		// Prints: 42
		```
		
		`Buffer.concat()` may also use the internal `Buffer` pool like `Buffer.allocUnsafe()` does.
	**/
	function concat(list:haxe.ds.ReadOnlyArray<js.lib.Uint8Array_<js.lib.ArrayBufferLike>>, ?totalLength:Float):Buffer<js.lib.ArrayBuffer>;
	/**
		Copies the underlying memory of `view` into a new `Buffer`.
		
		```js
		const u16 = new Uint16Array([0, 0xffff]);
		const buf = Buffer.copyBytesFrom(u16, 1, 1);
		u16[1] = 0;
		console.log(buf.length); // 2
		console.log(buf[0]); // 255
		console.log(buf[1]); // 255
		```
	**/
	function copyBytesFrom(view:global.nodejs.TypedArray<js.lib.ArrayBufferLike>, ?offset:Float, ?length:Float):Buffer<js.lib.ArrayBuffer>;
	/**
		Allocates a new `Buffer` of `size` bytes. If `fill` is `undefined`, the`Buffer` will be zero-filled.
		
		```js
		import { Buffer } from 'node:buffer';
		
		const buf = Buffer.alloc(5);
		
		console.log(buf);
		// Prints: <Buffer 00 00 00 00 00>
		```
		
		If `size` is larger than
		{@link
		constants.MAX_LENGTH
		}
		or smaller than 0, `ERR_OUT_OF_RANGE` is thrown.
		
		If `fill` is specified, the allocated `Buffer` will be initialized by calling `buf.fill(fill)`.
		
		```js
		import { Buffer } from 'node:buffer';
		
		const buf = Buffer.alloc(5, 'a');
		
		console.log(buf);
		// Prints: <Buffer 61 61 61 61 61>
		```
		
		If both `fill` and `encoding` are specified, the allocated `Buffer` will be
		initialized by calling `buf.fill(fill, encoding)`.
		
		```js
		import { Buffer } from 'node:buffer';
		
		const buf = Buffer.alloc(11, 'aGVsbG8gd29ybGQ=', 'base64');
		
		console.log(buf);
		// Prints: <Buffer 68 65 6c 6c 6f 20 77 6f 72 6c 64>
		```
		
		Calling `Buffer.alloc()` can be measurably slower than the alternative `Buffer.allocUnsafe()` but ensures that the newly created `Buffer` instance
		contents will never contain sensitive data from previous allocations, including
		data that might not have been allocated for `Buffer`s.
		
		A `TypeError` will be thrown if `size` is not a number.
	**/
	function alloc(size:Float, ?fill:ts.AnyOf3<String, Float, js.lib.Uint8Array_<js.lib.ArrayBufferLike>>, ?encoding:global.nodejs.BufferEncoding):Buffer<js.lib.ArrayBuffer>;
	/**
		Allocates a new `Buffer` of `size` bytes. If `size` is larger than
		{@link
		constants.MAX_LENGTH
		}
		or smaller than 0, `ERR_OUT_OF_RANGE` is thrown.
		
		The underlying memory for `Buffer` instances created in this way is _not_
		_initialized_. The contents of the newly created `Buffer` are unknown and _may contain sensitive data_. Use `Buffer.alloc()` instead to initialize`Buffer` instances with zeroes.
		
		```js
		import { Buffer } from 'node:buffer';
		
		const buf = Buffer.allocUnsafe(10);
		
		console.log(buf);
		// Prints (contents may vary): <Buffer a0 8b 28 3f 01 00 00 00 50 32>
		
		buf.fill(0);
		
		console.log(buf);
		// Prints: <Buffer 00 00 00 00 00 00 00 00 00 00>
		```
		
		A `TypeError` will be thrown if `size` is not a number.
		
		The `Buffer` module pre-allocates an internal `Buffer` instance of
		size `Buffer.poolSize` that is used as a pool for the fast allocation of new `Buffer` instances created using `Buffer.allocUnsafe()`, `Buffer.from(array)`,
		and `Buffer.concat()` only when `size` is less than `Buffer.poolSize >>> 1` (floor of `Buffer.poolSize` divided by two).
		
		Use of this pre-allocated internal memory pool is a key difference between
		calling `Buffer.alloc(size, fill)` vs. `Buffer.allocUnsafe(size).fill(fill)`.
		Specifically, `Buffer.alloc(size, fill)` will _never_ use the internal `Buffer`pool, while `Buffer.allocUnsafe(size).fill(fill)`_will_ use the internal`Buffer` pool if `size` is less
		than or equal to half `Buffer.poolSize`. The
		difference is subtle but can be important when an application requires the
		additional performance that `Buffer.allocUnsafe()` provides.
	**/
	function allocUnsafe(size:Float):Buffer<js.lib.ArrayBuffer>;
	/**
		Allocates a new `Buffer` of `size` bytes. If `size` is larger than
		{@link
		constants.MAX_LENGTH
		}
		or smaller than 0, `ERR_OUT_OF_RANGE` is thrown. A zero-length `Buffer` is created if
		`size` is 0.
		
		The underlying memory for `Buffer` instances created in this way is _not_
		_initialized_. The contents of the newly created `Buffer` are unknown and _may contain sensitive data_. Use `buf.fill(0)` to initialize
		such `Buffer` instances with zeroes.
		
		When using `Buffer.allocUnsafe()` to allocate new `Buffer` instances,
		allocations under 4 KiB are sliced from a single pre-allocated `Buffer`. This
		allows applications to avoid the garbage collection overhead of creating many
		individually allocated `Buffer` instances. This approach improves both
		performance and memory usage by eliminating the need to track and clean up as
		many individual `ArrayBuffer` objects.
		
		However, in the case where a developer may need to retain a small chunk of
		memory from a pool for an indeterminate amount of time, it may be appropriate
		to create an un-pooled `Buffer` instance using `Buffer.allocUnsafeSlow()` and
		then copying out the relevant bits.
		
		```js
		import { Buffer } from 'node:buffer';
		
		// Need to keep around a few small chunks of memory.
		const store = [];
		
		socket.on('readable', () => {
		  let data;
		  while (null !== (data = readable.read())) {
		    // Allocate for retained data.
		    const sb = Buffer.allocUnsafeSlow(10);
		
		    // Copy the data into the new allocation.
		    data.copy(sb, 0, 0, 10);
		
		    store.push(sb);
		  }
		});
		```
		
		A `TypeError` will be thrown if `size` is not a number.
	**/
	function allocUnsafeSlow(size:Float):Buffer<js.lib.ArrayBuffer>;
	/**
		Returns `true` if `obj` is a `Buffer`, `false` otherwise.
		
		```js
		import { Buffer } from 'node:buffer';
		
		Buffer.isBuffer(Buffer.alloc(10)); // true
		Buffer.isBuffer(Buffer.from('foo')); // true
		Buffer.isBuffer('a string'); // false
		Buffer.isBuffer([]); // false
		Buffer.isBuffer(new Uint8Array(1024)); // false
		```
	**/
	function isBuffer(obj:Dynamic):Bool;
	/**
		Returns `true` if `encoding` is the name of a supported character encoding,
		or `false` otherwise.
		
		```js
		import { Buffer } from 'node:buffer';
		
		console.log(Buffer.isEncoding('utf8'));
		// Prints: true
		
		console.log(Buffer.isEncoding('hex'));
		// Prints: true
		
		console.log(Buffer.isEncoding('utf/8'));
		// Prints: false
		
		console.log(Buffer.isEncoding(''));
		// Prints: false
		```
	**/
	function isEncoding(encoding:String):Bool;
	/**
		Returns the byte length of a string when encoded using `encoding`.
		This is not the same as [`String.prototype.length`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/length), which does not account
		for the encoding that is used to convert the string into bytes.
		
		For `'base64'`, `'base64url'`, and `'hex'`, this function assumes valid input.
		For strings that contain non-base64/hex-encoded data (e.g. whitespace), the
		return value might be greater than the length of a `Buffer` created from the
		string.
		
		```js
		import { Buffer } from 'node:buffer';
		
		const str = '\u00bd + \u00bc = \u00be';
		
		console.log(`${str}: ${str.length} characters, ` +
		            `${Buffer.byteLength(str, 'utf8')} bytes`);
		// Prints: ½ + ¼ = ¾: 9 characters, 12 bytes
		```
		
		When `string` is a
		`Buffer`/[`DataView`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/DataView)/[`TypedArray`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/-
		Reference/Global_Objects/TypedArray)/[`ArrayBuffer`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/ArrayBuffer)/[`SharedArrayBuffer`](https://develop-
		er.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/SharedArrayBuffer), the byte length as reported by `.byteLength`is returned.
	**/
	function byteLength(string:ts.AnyOf15<String, js.lib.ArrayBuffer, js.lib.SharedArrayBuffer, js.lib.DataView_<js.lib.ArrayBufferLike>, js.lib.Int8Array_<js.lib.ArrayBufferLike>, js.lib.Uint8Array_<js.lib.ArrayBufferLike>, js.lib.Uint8ClampedArray_<js.lib.ArrayBufferLike>, js.lib.Int16Array_<js.lib.ArrayBufferLike>, js.lib.Uint16Array_<js.lib.ArrayBufferLike>, js.lib.Int32Array_<js.lib.ArrayBufferLike>, js.lib.Uint32Array_<js.lib.ArrayBufferLike>, js.lib.Float32Array_<js.lib.ArrayBufferLike>, js.lib.Float64Array_<js.lib.ArrayBufferLike>, js.lib.BigInt64Array<js.lib.ArrayBufferLike>, js.lib.BigUint64Array<js.lib.ArrayBufferLike>>, ?encoding:global.nodejs.BufferEncoding):Float;
	/**
		Compares `buf1` to `buf2`, typically for the purpose of sorting arrays of `Buffer` instances. This is equivalent to calling `buf1.compare(buf2)`.
		
		```js
		import { Buffer } from 'node:buffer';
		
		const buf1 = Buffer.from('1234');
		const buf2 = Buffer.from('0123');
		const arr = [buf1, buf2];
		
		console.log(arr.sort(Buffer.compare));
		// Prints: [ <Buffer 30 31 32 33>, <Buffer 31 32 33 34> ]
		// (This result is equal to: [buf2, buf1].)
		```
	**/
	function compare(buf1:js.lib.Uint8Array_<js.lib.ArrayBufferLike>, buf2:js.lib.Uint8Array_<js.lib.ArrayBufferLike>):Int;
	/**
		This is the size (in bytes) of pre-allocated internal `Buffer` instances used
		for pooling. This value may be modified.
	**/
	var poolSize : Float;
};