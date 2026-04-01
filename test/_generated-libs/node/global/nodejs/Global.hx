package global.nodejs;

typedef Global = {
	var Array : js.lib.ArrayConstructor;
	var ArrayBuffer : js.lib.ArrayBufferConstructor;
	var Boolean : js.lib.BooleanConstructor;
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
		@:overload(function(data:js.lib.Uint8Array_<js.lib.ArrayBufferLike>):global.Buffer { })
		@:overload(function(str:String, ?encoding:String):global.Buffer { })
		function from(arrayBuffer:ts.AnyOf2<js.lib.ArrayBuffer, js.lib.SharedArrayBuffer>, ?byteOffset:Float, ?length:Float):global.Buffer;
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
		function byteLength(string:ts.AnyOf13<String, js.lib.ArrayBuffer, js.lib.SharedArrayBuffer, js.lib.DataView_<js.lib.ArrayBufferLike>, js.lib.Uint8Array_<js.lib.ArrayBufferLike>, js.lib.Uint8ClampedArray_<js.lib.ArrayBufferLike>, js.lib.Uint16Array_<js.lib.ArrayBufferLike>, js.lib.Uint32Array_<js.lib.ArrayBufferLike>, js.lib.Int8Array_<js.lib.ArrayBufferLike>, js.lib.Int16Array_<js.lib.ArrayBufferLike>, js.lib.Int32Array_<js.lib.ArrayBufferLike>, js.lib.Float32Array_<js.lib.ArrayBufferLike>, js.lib.Float64Array_<js.lib.ArrayBufferLike>>, ?encoding:String):Float;
		/**
			Returns a buffer which is the result of concatenating all the buffers in the list together.
			
			If the list has no items, or if the totalLength is 0, then it returns a zero-length buffer.
			If the list has exactly one item, then the first item of the list is returned.
			If the list has more than one item, then a new Buffer is created.
		**/
		function concat(list:Array<js.lib.Uint8Array_<js.lib.ArrayBufferLike>>, ?totalLength:Float):global.Buffer;
		/**
			The same as buf1.compare(buf2).
		**/
		function compare(buf1:js.lib.Uint8Array_<js.lib.ArrayBufferLike>, buf2:js.lib.Uint8Array_<js.lib.ArrayBufferLike>):Float;
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
	var DataView : js.lib.DataViewConstructor;
	var Date : js.lib.DateConstructor;
	var Error : js.lib.ErrorConstructor;
	var EvalError : js.lib.EvalErrorConstructor;
	var Float32Array : js.lib.Float32ArrayConstructor;
	var Float64Array : js.lib.Float64ArrayConstructor;
	var Function : js.lib.FunctionConstructor;
	var GLOBAL : Global;
	var Infinity : Float;
	var Int16Array : js.lib.Int16ArrayConstructor;
	var Int32Array : js.lib.Int32ArrayConstructor;
	var Int8Array : js.lib.Int8ArrayConstructor;
	var Intl : {
		var Collator : js.lib.intl.CollatorConstructor;
		var NumberFormat : js.lib.intl.NumberFormatConstructor;
		var DateTimeFormat : js.lib.intl.DateTimeFormatConstructor;
		/**
			The `Intl.getCanonicalLocales()` method returns an array containing
			the canonical locale names. Duplicates will be omitted and elements
			will be validated as structurally valid language tags.
			
			[MDN](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/Intl/getCanonicalLocales)
		**/
		function getCanonicalLocales(?locale:ts.AnyOf2<String, haxe.ds.ReadOnlyArray<String>>):Array<String>;
		final PluralRules : js.lib.intl.PluralRulesConstructor;
		/**
			The [`Intl.RelativeTimeFormat`](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/RelativeTimeFormat)
			object is a constructor for objects that enable language-sensitive relative time formatting.
			
			[Compatibility](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/Intl/RelativeTimeFormat#Browser_compatibility).
		**/
		final RelativeTimeFormat : {
			/**
				Returns an array containing those of the provided locales
				that are supported in date and time formatting
				without having to fall back to the runtime's default locale.
			**/
			function supportedLocalesOf(?locales:js.lib.intl.LocalesArgument, ?options:js.lib.intl.RelativeTimeFormat.RelativeTimeFormatOptions):Array<String>;
		};
		/**
			Constructor creates [Intl.Locale](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/Intl/Locale)
			objects
		**/
		final Locale : { };
		/**
			The [`Intl.DisplayNames()`](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/Intl/DisplayNames)
			object enables the consistent translation of language, region and script display names.
			
			[Compatibility](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/Intl/DisplayNames#browser_compatibility).
		**/
		final DisplayNames : {
			var prototype : js.lib.intl.DisplayNames;
			/**
				Returns an array containing those of the provided locales that are supported in display names without having to fall back to the runtime's default locale.
			**/
			function supportedLocalesOf(?locales:js.lib.intl.LocalesArgument, ?options:{ @:optional var localeMatcher : js.lib.intl.RelativeTimeFormatLocaleMatcher; }):Array<String>;
		};
	};
	var JSON : js.lib.JSON;
	var Map : js.lib.MapConstructor;
	var Math : js.lib.Math;
	var NaN : Float;
	var Number : js.lib.NumberConstructor;
	var Object : js.lib.ObjectConstructor;
	var Promise : haxe.Constraints.Function;
	var RangeError : js.lib.RangeErrorConstructor;
	var ReferenceError : js.lib.ReferenceErrorConstructor;
	var RegExp : js.lib.RegExpConstructor;
	var Set : js.lib.SetConstructor;
	var String : js.lib.StringConstructor;
	var Symbol : haxe.Constraints.Function;
	var SyntaxError : js.lib.SyntaxErrorConstructor;
	var TypeError : js.lib.TypeErrorConstructor;
	var URIError : js.lib.URIErrorConstructor;
	var Uint16Array : js.lib.Uint16ArrayConstructor;
	var Uint32Array : js.lib.Uint32ArrayConstructor;
	var Uint8Array : js.lib.Uint8ArrayConstructor;
	var Uint8ClampedArray : haxe.Constraints.Function;
	var WeakMap : js.lib.WeakMapConstructor;
	var WeakSet : js.lib.WeakSetConstructor;
	dynamic function clearImmediate(immediateId:Immediate):Void;
	dynamic function clearInterval(intervalId:Timeout):Void;
	dynamic function clearTimeout(timeoutId:Timeout):Void;
	var console : js.html.Console;
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
	dynamic function parseInt(string:String, ?radix:Float):Float;
	var process : Process;
	var root : Global;
	dynamic function setImmediate(callback:(args:haxe.extern.Rest<Dynamic>) -> Void, args:haxe.extern.Rest<Dynamic>):Immediate;
	dynamic function setInterval(callback:(args:haxe.extern.Rest<Dynamic>) -> Void, ms:Float, args:haxe.extern.Rest<Dynamic>):Timeout;
	dynamic function setTimeout(callback:(args:haxe.extern.Rest<Dynamic>) -> Void, ms:Float, args:haxe.extern.Rest<Dynamic>):Timeout;
	@:overload(function(callback:() -> Void):Void { })
	dynamic function queueMicrotask(callback:js.html.VoidFunction):Void;
	var undefined : Null<Any>;
	dynamic function unescape(str:String):String;
	dynamic function gc():Void;
	@:optional
	var v8debug : Dynamic;
};