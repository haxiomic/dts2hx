package ts.html;
/**
	The CanvasRenderingContext2D interface, part of the Canvas API, provides the 2D rendering context for the drawing surface of a <canvas> element. It is used for drawing shapes, text, images, and other objects.
**/
typedef ICanvasRenderingContext2D = {
	final canvas : IHTMLCanvasElement;
	var globalAlpha : Float;
	var globalCompositeOperation : String;
	@:overload(function(image:CanvasImageSource, dx:Float, dy:Float, dw:Float, dh:Float):Void { })
	@:overload(function(image:CanvasImageSource, sx:Float, sy:Float, sw:Float, sh:Float, dx:Float, dy:Float, dw:Float, dh:Float):Void { })
	function drawImage(image:CanvasImageSource, dx:Float, dy:Float):Void;
	function beginPath():Void;
	@:overload(function(path:IPath2D, ?fillRule:String):Void { })
	function clip(?fillRule:String):Void;
	@:overload(function(path:IPath2D, ?fillRule:String):Void { })
	function fill(?fillRule:String):Void;
	@:overload(function(path:IPath2D, x:Float, y:Float, ?fillRule:String):Bool { })
	function isPointInPath(x:Float, y:Float, ?fillRule:String):Bool;
	@:overload(function(path:IPath2D, x:Float, y:Float):Bool { })
	function isPointInStroke(x:Float, y:Float):Bool;
	@:overload(function(path:IPath2D):Void { })
	function stroke():Void;
	var fillStyle : ts.AnyOf3<String, ICanvasGradient, ICanvasPattern>;
	var strokeStyle : ts.AnyOf3<String, ICanvasGradient, ICanvasPattern>;
	function createLinearGradient(x0:Float, y0:Float, x1:Float, y1:Float):ICanvasGradient;
	function createPattern(image:CanvasImageSource, repetition:String):Null<ICanvasPattern>;
	function createRadialGradient(x0:Float, y0:Float, r0:Float, x1:Float, y1:Float, r1:Float):ICanvasGradient;
	var filter : String;
	@:overload(function(imagedata:IImageData):IImageData { })
	function createImageData(sw:Float, sh:Float):IImageData;
	function getImageData(sx:Float, sy:Float, sw:Float, sh:Float):IImageData;
	@:overload(function(imagedata:IImageData, dx:Float, dy:Float, dirtyX:Float, dirtyY:Float, dirtyWidth:Float, dirtyHeight:Float):Void { })
	function putImageData(imagedata:IImageData, dx:Float, dy:Float):Void;
	var imageSmoothingEnabled : Bool;
	var imageSmoothingQuality : ImageSmoothingQuality;
	function arc(x:Float, y:Float, radius:Float, startAngle:Float, endAngle:Float, ?anticlockwise:Bool):Void;
	function arcTo(x1:Float, y1:Float, x2:Float, y2:Float, radius:Float):Void;
	function bezierCurveTo(cp1x:Float, cp1y:Float, cp2x:Float, cp2y:Float, x:Float, y:Float):Void;
	function closePath():Void;
	function ellipse(x:Float, y:Float, radiusX:Float, radiusY:Float, rotation:Float, startAngle:Float, endAngle:Float, ?anticlockwise:Bool):Void;
	function lineTo(x:Float, y:Float):Void;
	function moveTo(x:Float, y:Float):Void;
	function quadraticCurveTo(cpx:Float, cpy:Float, x:Float, y:Float):Void;
	function rect(x:Float, y:Float, w:Float, h:Float):Void;
	var lineCap : CanvasLineCap;
	var lineDashOffset : Float;
	var lineJoin : CanvasLineJoin;
	var lineWidth : Float;
	var miterLimit : Float;
	function getLineDash():Array<Float>;
	@:overload(function(segments:ts.lib.Iterable<Float>):Void { })
	function setLineDash(segments:Array<Float>):Void;
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
	function measureText(text:String):ITextMetrics;
	function strokeText(text:String, x:Float, y:Float, ?maxWidth:Float):Void;
	var direction : CanvasDirection;
	var font : String;
	var textAlign : CanvasTextAlign;
	var textBaseline : CanvasTextBaseline;
	function getTransform():IDOMMatrix;
	function resetTransform():Void;
	function rotate(angle:Float):Void;
	function scale(x:Float, y:Float):Void;
	@:overload(function(?transform:DOMMatrix2DInit):Void { })
	function setTransform(a:Float, b:Float, c:Float, d:Float, e:Float, f:Float):Void;
	function transform(a:Float, b:Float, c:Float, d:Float, e:Float, f:Float):Void;
	function translate(x:Float, y:Float):Void;
	@:overload(function(path:IPath2D, element:IElement):Void { })
	function drawFocusIfNeeded(element:IElement):Void;
	@:overload(function(path:IPath2D):Void { })
	function scrollPathIntoView():Void;
};