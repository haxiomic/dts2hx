package js.html;
/**
	The CanvasRenderingContext2D interface, part of the Canvas API, provides the 2D rendering context for the drawing surface of a <canvas> element. It is used for drawing shapes, text, images, and other objects.
**/
@:native("CanvasRenderingContext2D") @tsInterface extern class CanvasRenderingContext2D {
	function new();
	final canvas : HTMLCanvasElement;
	var globalAlpha : Float;
	var globalCompositeOperation : String;
	@:overload(function(image:haxe.extern.EitherType<HTMLCanvasElement, haxe.extern.EitherType<HTMLVideoElement, haxe.extern.EitherType<HTMLImageElement, haxe.extern.EitherType<OffscreenCanvas, haxe.extern.EitherType<ImageBitmap, SVGImageElement>>>>>, dx:Float, dy:Float, dw:Float, dh:Float):Void { })
	@:overload(function(image:haxe.extern.EitherType<HTMLCanvasElement, haxe.extern.EitherType<HTMLVideoElement, haxe.extern.EitherType<HTMLImageElement, haxe.extern.EitherType<OffscreenCanvas, haxe.extern.EitherType<ImageBitmap, SVGImageElement>>>>>, sx:Float, sy:Float, sw:Float, sh:Float, dx:Float, dy:Float, dw:Float, dh:Float):Void { })
	function drawImage(image:haxe.extern.EitherType<HTMLCanvasElement, haxe.extern.EitherType<HTMLVideoElement, haxe.extern.EitherType<HTMLImageElement, haxe.extern.EitherType<OffscreenCanvas, haxe.extern.EitherType<ImageBitmap, SVGImageElement>>>>>, dx:Float, dy:Float):Void;
	function beginPath():Void;
	@:overload(function(path:Path2D, ?fillRule:String):Void { })
	function clip(?fillRule:String):Void;
	@:overload(function(path:Path2D, ?fillRule:String):Void { })
	function fill(?fillRule:String):Void;
	@:overload(function(path:Path2D, x:Float, y:Float, ?fillRule:String):Bool { })
	function isPointInPath(x:Float, y:Float, ?fillRule:String):Bool;
	@:overload(function(path:Path2D, x:Float, y:Float):Bool { })
	function isPointInStroke(x:Float, y:Float):Bool;
	@:overload(function(path:Path2D):Void { })
	function stroke():Void;
	var fillStyle : haxe.extern.EitherType<String, haxe.extern.EitherType<CanvasGradient, CanvasPattern>>;
	var strokeStyle : haxe.extern.EitherType<String, haxe.extern.EitherType<CanvasGradient, CanvasPattern>>;
	function createLinearGradient(x0:Float, y0:Float, x1:Float, y1:Float):CanvasGradient;
	function createPattern(image:haxe.extern.EitherType<HTMLCanvasElement, haxe.extern.EitherType<HTMLVideoElement, haxe.extern.EitherType<HTMLImageElement, haxe.extern.EitherType<OffscreenCanvas, haxe.extern.EitherType<ImageBitmap, SVGImageElement>>>>>, repetition:String):Null<CanvasPattern>;
	function createRadialGradient(x0:Float, y0:Float, r0:Float, x1:Float, y1:Float, r1:Float):CanvasGradient;
	var filter : String;
	@:overload(function(imagedata:ImageData):ImageData { })
	function createImageData(sw:Float, sh:Float):ImageData;
	function getImageData(sx:Float, sy:Float, sw:Float, sh:Float):ImageData;
	@:overload(function(imagedata:ImageData, dx:Float, dy:Float, dirtyX:Float, dirtyY:Float, dirtyWidth:Float, dirtyHeight:Float):Void { })
	function putImageData(imagedata:ImageData, dx:Float, dy:Float):Void;
	var imageSmoothingEnabled : Bool;
	var imageSmoothingQuality : String;
	function arc(x:Float, y:Float, radius:Float, startAngle:Float, endAngle:Float, ?anticlockwise:Bool):Void;
	function arcTo(x1:Float, y1:Float, x2:Float, y2:Float, radius:Float):Void;
	function bezierCurveTo(cp1x:Float, cp1y:Float, cp2x:Float, cp2y:Float, x:Float, y:Float):Void;
	function closePath():Void;
	function ellipse(x:Float, y:Float, radiusX:Float, radiusY:Float, rotation:Float, startAngle:Float, endAngle:Float, ?anticlockwise:Bool):Void;
	function lineTo(x:Float, y:Float):Void;
	function moveTo(x:Float, y:Float):Void;
	function quadraticCurveTo(cpx:Float, cpy:Float, x:Float, y:Float):Void;
	function rect(x:Float, y:Float, w:Float, h:Float):Void;
	var lineCap : String;
	var lineDashOffset : Float;
	var lineJoin : String;
	var lineWidth : Float;
	var miterLimit : Float;
	function getLineDash():std.Array<Float>;
	@:overload(function(segments:js.lib.Iterable<Float>):Void { })
	function setLineDash(segments:std.Array<Float>):Void;
	function clearRect(x:Float, y:Float, w:Float, h:Float):Void;
	function fillRect(x:Float, y:Float, w:Float, h:Float):Void;
	function strokeRect(x:Float, y:Float, w:Float, h:Float):Void;
	var shadowBlur : Float;
	var shadowColor : String;
	var shadowOffsetX : Float;
	var shadowOffsetY : Float;
	function restore():Void;
	function save():Void;
	function fillText(text:String, x:Float, y:Float, ?maxWidth:Float):Void;
	function measureText(text:String):TextMetrics;
	function strokeText(text:String, x:Float, y:Float, ?maxWidth:Float):Void;
	var direction : String;
	var font : String;
	var textAlign : String;
	var textBaseline : String;
	function getTransform():DOMMatrix;
	function resetTransform():Void;
	function rotate(angle:Float):Void;
	function scale(x:Float, y:Float):Void;
	@:overload(function(?transform:DOMMatrix2DInit):Void { })
	function setTransform(a:Float, b:Float, c:Float, d:Float, e:Float, f:Float):Void;
	function transform(a:Float, b:Float, c:Float, d:Float, e:Float, f:Float):Void;
	function translate(x:Float, y:Float):Void;
	@:overload(function(path:Path2D, element:Element):Void { })
	function drawFocusIfNeeded(element:Element):Void;
	@:overload(function(path:Path2D):Void { })
	function scrollPathIntoView():Void;
	static var prototype : CanvasRenderingContext2D;
}