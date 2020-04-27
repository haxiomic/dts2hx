package js.html;
extern interface CanvasFillStrokeStyles {
	var fillStyle : haxe.extern.EitherType<String, haxe.extern.EitherType<CanvasGradient, CanvasPattern>>;
	var strokeStyle : haxe.extern.EitherType<String, haxe.extern.EitherType<CanvasGradient, CanvasPattern>>;
	function createLinearGradient(x0:Float, y0:Float, x1:Float, y1:Float):CanvasGradient;
	function createPattern(image:haxe.extern.EitherType<HTMLCanvasElement, haxe.extern.EitherType<HTMLVideoElement, haxe.extern.EitherType<HTMLImageElement, haxe.extern.EitherType<OffscreenCanvas, haxe.extern.EitherType<ImageBitmap, SVGImageElement>>>>>, repetition:String):Null<CanvasPattern>;
	function createRadialGradient(x0:Float, y0:Float, r0:Float, x1:Float, y1:Float, r1:Float):CanvasGradient;
}