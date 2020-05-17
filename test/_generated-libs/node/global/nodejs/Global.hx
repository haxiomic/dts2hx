package global.nodejs;
typedef Global = {
	var Array : ts.lib.ArrayConstructor;
	var ArrayBuffer : ts.lib.ArrayBufferConstructor;
	var Boolean : ts.lib.BooleanConstructor;
	var Buffer : {
		var prototype : global.Buffer;
		/**
			When passed a reference to the .buffer property of a TypedArray instance,
			the newly created Buffer will share the same allocated memory as the TypedArray.
			The optional {byteOffset} and {length} arguments specify a memory range
			within the {arrayBuffer} that will be shared by the Buffer.
			
			Creates a new Buffer using the passed {data}
			
			Creates a new Buffer containing the given JavaScript string {str}.
			If provided, the {encoding} parameter identifies the character encoding.
			If not provided, {encoding} defaults to 'utf8'.
		**/
		@:overload(function(data:Array<Float>):global.Buffer { })
		@:overload(function(data:js.lib.Uint8Array):global.Buffer { })
		@:overload(function(str:String, ?encoding:String):global.Buffer { })
		function from(arrayBuffer:ts.AnyOf2<js.lib.ArrayBuffer, ts.lib.SharedArrayBuffer>, ?byteOffset:Float, ?length:Float):global.Buffer;
		/**
			Creates a new Buffer using the passed {data}
		**/
		function of(items:haxe.extern.Rest<Float>):global.Buffer;
		/**
			Returns true if {obj} is a Buffer
		**/
		function isBuffer(obj:Dynamic):Bool;
		/**
			Returns true if {encoding} is a valid encoding argument.
			Valid string encodings in Node 0.12: 'ascii'|'utf8'|'utf16le'|'ucs2'(alias of 'utf16le')|'base64'|'binary'(deprecated)|'hex'
		**/
		function isEncoding(encoding:String):Null<Bool>;
		/**
			Gives the actual byte length of a string. encoding defaults to 'utf8'.
			This is not the same as String.prototype.length since that returns the number of characters in a string.
		**/
		function byteLength(string:ts.AnyOf13<String, js.lib.Uint8Array, js.lib.ArrayBuffer, ts.lib.SharedArrayBuffer, js.lib.Uint8ClampedArray, js.lib.Uint16Array, js.lib.Uint32Array, js.lib.Int8Array, js.lib.Int16Array, js.lib.Int32Array, js.lib.Float32Array, js.lib.Float64Array, js.lib.DataView>, ?encoding:String):Float;
		/**
			Returns a buffer which is the result of concatenating all the buffers in the list together.
			
			If the list has no items, or if the totalLength is 0, then it returns a zero-length buffer.
			If the list has exactly one item, then the first item of the list is returned.
			If the list has more than one item, then a new Buffer is created.
		**/
		function concat(list:Array<js.lib.Uint8Array>, ?totalLength:Float):global.Buffer;
		/**
			The same as buf1.compare(buf2).
		**/
		function compare(buf1:js.lib.Uint8Array, buf2:js.lib.Uint8Array):Float;
		/**
			Allocates a new buffer of {size} octets.
		**/
		function alloc(size:Float, ?fill:ts.AnyOf3<String, Float, global.Buffer>, ?encoding:String):global.Buffer;
		/**
			Allocates a new buffer of {size} octets, leaving memory not initialized, so the contents
			of the newly created Buffer are unknown and may contain sensitive data.
		**/
		function allocUnsafe(size:Float):global.Buffer;
		/**
			Allocates a new non-pooled buffer of {size} octets, leaving memory not initialized, so the contents
			of the newly created Buffer are unknown and may contain sensitive data.
		**/
		function allocUnsafeSlow(size:Float):global.Buffer;
		/**
			This is the number of bytes used to determine the size of pre-allocated, internal Buffer instances used for pooling. This value may be modified.
		**/
		var poolSize : Float;
	};
	var DataView : ts.lib.DataViewConstructor;
	var Date : ts.lib.DateConstructor;
	var Error : ts.lib.ErrorConstructor;
	var EvalError : ts.lib.EvalErrorConstructor;
	var Float32Array : ts.lib.Float32ArrayConstructor;
	var Float64Array : ts.lib.Float64ArrayConstructor;
	var Function : ts.lib.FunctionConstructor;
	var GLOBAL : Global;
	var Infinity : Float;
	var Int16Array : ts.lib.Int16ArrayConstructor;
	var Int32Array : ts.lib.Int32ArrayConstructor;
	var Int8Array : ts.lib.Int8ArrayConstructor;
	var Intl : {
		var Collator : {
			@:selfCall
			function call(?locales:ts.AnyOf2<String, Array<String>>, ?options:ts.lib.intl.CollatorOptions):js.lib.intl.Collator;
			function supportedLocalesOf(locales:ts.AnyOf2<String, Array<String>>, ?options:ts.lib.intl.CollatorOptions):Array<String>;
		};
		var NumberFormat : {
			@:selfCall
			function call(?locales:ts.AnyOf2<String, Array<String>>, ?options:ts.lib.intl.NumberFormatOptions):js.lib.intl.NumberFormat;
			function supportedLocalesOf(locales:ts.AnyOf2<String, Array<String>>, ?options:ts.lib.intl.NumberFormatOptions):Array<String>;
		};
		var DateTimeFormat : {
			@:selfCall
			function call(?locales:ts.AnyOf2<String, Array<String>>, ?options:ts.lib.intl.DateTimeFormatOptions):js.lib.intl.DateTimeFormat;
			function supportedLocalesOf(locales:ts.AnyOf2<String, Array<String>>, ?options:ts.lib.intl.DateTimeFormatOptions):Array<String>;
		};
		var PluralRules : {
			@:selfCall
			function call(?locales:ts.AnyOf2<String, Array<String>>, ?options:ts.lib.intl.PluralRulesOptions):js.lib.intl.PluralRules;
			function supportedLocalesOf(locales:ts.AnyOf2<String, Array<String>>, ?options:ts.lib.intl.PluralRulesOptions):Array<String>;
		};
	};
	var JSON : ts.lib.JSON;
	var Map : ts.lib.MapConstructor;
	var Math : js.lib.Math;
	var NaN : Float;
	var Number : ts.lib.NumberConstructor;
	var Object : ts.lib.ObjectConstructor;
	var Promise : js.lib.Function;
	var RangeError : ts.lib.RangeErrorConstructor;
	var ReferenceError : ts.lib.ReferenceErrorConstructor;
	var RegExp : ts.lib.RegExpConstructor;
	var Set : ts.lib.SetConstructor;
	var String : ts.lib.StringConstructor;
	var Symbol : js.lib.Function;
	var SyntaxError : ts.lib.SyntaxErrorConstructor;
	var TypeError : ts.lib.TypeErrorConstructor;
	var URIError : ts.lib.URIErrorConstructor;
	var Uint16Array : ts.lib.Uint16ArrayConstructor;
	var Uint32Array : ts.lib.Uint32ArrayConstructor;
	var Uint8Array : ts.lib.Uint8ArrayConstructor;
	var Uint8ClampedArray : js.lib.Function;
	var WeakMap : ts.lib.WeakMapConstructor;
	var WeakSet : ts.lib.WeakSetConstructor;
	dynamic function clearImmediate(immediateId:Immediate):Void;
	dynamic function clearInterval(intervalId:Timeout):Void;
	dynamic function clearTimeout(timeoutId:Timeout):Void;
	var console : ts.html.Console;
	dynamic function decodeURI(encodedURI:String):String;
	dynamic function decodeURIComponent(encodedURIComponent:String):String;
	dynamic function encodeURI(uri:String):String;
	dynamic function encodeURIComponent(uriComponent:ts.AnyOf3<String, Float, Bool>):String;
	dynamic function escape(str:String):String;
	dynamic function eval(x:String):Dynamic;
	var global : Global;
	dynamic function isFinite(number:Float):Bool;
	dynamic function isNaN(number:Float):Bool;
	dynamic function parseFloat(string:String):Float;
	dynamic function parseInt(s:String, ?radix:Float):Float;
	var process : Process;
	var root : Global;
	dynamic function setImmediate(callback:(args:haxe.extern.Rest<Dynamic>) -> Void, args:haxe.extern.Rest<Dynamic>):Immediate;
	dynamic function setInterval(callback:(args:haxe.extern.Rest<Dynamic>) -> Void, ms:Float, args:haxe.extern.Rest<Dynamic>):Timeout;
	dynamic function setTimeout(callback:(args:haxe.extern.Rest<Dynamic>) -> Void, ms:Float, args:haxe.extern.Rest<Dynamic>):Timeout;
	@:overload(function(callback:() -> Void):Void { })
	dynamic function queueMicrotask(callback:js.lib.Function):Void;
	var undefined : Null<Any>;
	dynamic function unescape(str:String):String;
	dynamic function gc():Void;
	@:optional
	var v8debug : Dynamic;
};