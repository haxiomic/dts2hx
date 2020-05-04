package node.crypto;
typedef DecipherGCM = {
	function setAuthTag(buffer:Binary):DecipherGCM;
	function setAAD(buffer:Binary, ?options:{ var plaintextLength : Float; }):DecipherGCM;
	@:overload(function(data:String, input_encoding:HexBase64BinaryEncoding):global.IBuffer { })
	@:overload(function(data:Binary, input_encoding:Null<Any>, output_encoding:Utf8AsciiBinaryEncoding):String { })
	@:overload(function(data:String, input_encoding:Null<String>, output_encoding:Utf8AsciiBinaryEncoding):String { })
	function update(data:Binary):global.IBuffer;
	@:native("final")
	@:overload(function(output_encoding:String):String { })
	function final_():global.IBuffer;
	function setAutoPadding(?auto_padding:Bool):DecipherGCM;
	var readable : Bool;
	function read(?size:Float):ts.AnyOf2<String, global.IBuffer>;
	function setEncoding(encoding:String):DecipherGCM;
	function pause():DecipherGCM;
	function resume():DecipherGCM;
	function isPaused():Bool;
	function pipe<T>(destination:T, ?options:{ @:optional var end : Bool; }):T;
	function unpipe(?destination:global.nodejs.WritableStream):DecipherGCM;
	@:overload(function(chunk:global.IBuffer):Void { })
	function unshift(chunk:String):Void;
	function wrap(oldStream:global.nodejs.ReadableStream):DecipherGCM;
	function addListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):DecipherGCM;
	function on(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):DecipherGCM;
	function once(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):DecipherGCM;
	function removeListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):DecipherGCM;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):DecipherGCM;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):DecipherGCM;
	function setMaxListeners(n:Float):DecipherGCM;
	function getMaxListeners():Float;
	function listeners(event:ts.AnyOf2<String, js.lib.Symbol>):Array<ts.lib.IFunction>;
	function rawListeners(event:ts.AnyOf2<String, js.lib.Symbol>):Array<ts.lib.IFunction>;
	function emit(event:ts.AnyOf2<String, js.lib.Symbol>, args:haxe.extern.Rest<Dynamic>):Bool;
	function listenerCount(type:ts.AnyOf2<String, js.lib.Symbol>):Float;
	function prependListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):DecipherGCM;
	function prependOnceListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):DecipherGCM;
	function eventNames():Array<ts.AnyOf2<String, js.lib.Symbol>>;
	var writable : Bool;
	@:overload(function(str:String, ?encoding:String, ?cb:ts.AnyOf2<() -> Void, (err:ts.lib.IError) -> Void>):Bool { })
	function write(buffer:ts.AnyOf3<String, global.IBuffer, ts.lib.IUint8Array>, ?cb:ts.AnyOf2<() -> Void, (err:ts.lib.IError) -> Void>):Bool;
	@:overload(function(data:ts.AnyOf3<String, global.IBuffer, ts.lib.IUint8Array>, ?cb:() -> Void):Void { })
	@:overload(function(str:String, ?encoding:String, ?cb:() -> Void):Void { })
	function end(?cb:() -> Void):Void;
};