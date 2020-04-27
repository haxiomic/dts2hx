package js.html;
extern interface WindowOrWorkerGlobalScope {
	final caches : CacheStorage;
	final crypto : Crypto;
	final indexedDB : IDBFactory;
	final origin : String;
	final performance : Performance;
	function atob(data:String):String;
	function btoa(data:String):String;
	function clearInterval(?handle:Float):Void;
	function clearTimeout(?handle:Float):Void;
	@:overload(function(image:haxe.extern.EitherType<HTMLCanvasElement, haxe.extern.EitherType<HTMLVideoElement, haxe.extern.EitherType<ImageData, haxe.extern.EitherType<HTMLImageElement, haxe.extern.EitherType<OffscreenCanvas, haxe.extern.EitherType<ImageBitmap, haxe.extern.EitherType<Blob, SVGImageElement>>>>>>>, sx:Float, sy:Float, sw:Float, sh:Float):js.lib.Promise<ImageBitmap> { })
	function createImageBitmap(image:haxe.extern.EitherType<HTMLCanvasElement, haxe.extern.EitherType<HTMLVideoElement, haxe.extern.EitherType<ImageData, haxe.extern.EitherType<HTMLImageElement, haxe.extern.EitherType<OffscreenCanvas, haxe.extern.EitherType<ImageBitmap, haxe.extern.EitherType<Blob, SVGImageElement>>>>>>>):js.lib.Promise<ImageBitmap>;
	function fetch(input:haxe.extern.EitherType<String, Request>, ?init:RequestInit):js.lib.Promise<Response>;
	function queueMicrotask(callback:js.lib.Function):Void;
	function setInterval(handler:haxe.extern.EitherType<String, js.lib.Function>, ?timeout:Float, arguments:std.Array<Any>):Float;
	function setTimeout(handler:haxe.extern.EitherType<String, js.lib.Function>, ?timeout:Float, arguments:std.Array<Any>):Float;
}