package js.html;

/**
	The **`OffscreenCanvasRenderingContext2D`** interface is a CanvasRenderingContext2D rendering context for drawing to the bitmap of an `OffscreenCanvas` object.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/OffscreenCanvasRenderingContext2D)
**/
typedef IOffscreenCanvasRenderingContext2D = {
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/canvas)
	**/
	final canvas : OffscreenCanvas;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/globalAlpha)
	**/
	var globalAlpha : Float;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/globalCompositeOperation)
	**/
	var globalCompositeOperation : GlobalCompositeOperation;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/drawImage)
	**/
	@:overload(function(image:CanvasImageSource, dx:Float, dy:Float, dw:Float, dh:Float):Void { })
	@:overload(function(image:CanvasImageSource, sx:Float, sy:Float, sw:Float, sh:Float, dx:Float, dy:Float, dw:Float, dh:Float):Void { })
	function drawImage(image:CanvasImageSource, dx:Float, dy:Float):Void;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/beginPath)
	**/
	function beginPath():Void;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/clip)
	**/
	@:overload(function(path:js.html.Path2D, ?fillRule:CanvasFillRule):Void { })
	function clip(?fillRule:CanvasFillRule):Void;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/fill)
	**/
	@:overload(function(path:js.html.Path2D, ?fillRule:CanvasFillRule):Void { })
	function fill(?fillRule:CanvasFillRule):Void;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/isPointInPath)
	**/
	@:overload(function(path:js.html.Path2D, x:Float, y:Float, ?fillRule:CanvasFillRule):Bool { })
	function isPointInPath(x:Float, y:Float, ?fillRule:CanvasFillRule):Bool;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/isPointInStroke)
	**/
	@:overload(function(path:js.html.Path2D, x:Float, y:Float):Bool { })
	function isPointInStroke(x:Float, y:Float):Bool;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/stroke)
	**/
	@:overload(function(path:js.html.Path2D):Void { })
	function stroke():Void;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/fillStyle)
	**/
	var fillStyle : ts.AnyOf3<String, js.html.CanvasGradient, js.html.CanvasPattern>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/strokeStyle)
	**/
	var strokeStyle : ts.AnyOf3<String, js.html.CanvasGradient, js.html.CanvasPattern>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/createConicGradient)
	**/
	function createConicGradient(startAngle:Float, x:Float, y:Float):js.html.CanvasGradient;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/createLinearGradient)
	**/
	function createLinearGradient(x0:Float, y0:Float, x1:Float, y1:Float):js.html.CanvasGradient;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/createPattern)
	**/
	function createPattern(image:CanvasImageSource, repetition:Null<String>):Null<js.html.CanvasPattern>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/createRadialGradient)
	**/
	function createRadialGradient(x0:Float, y0:Float, r0:Float, x1:Float, y1:Float, r1:Float):js.html.CanvasGradient;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/filter)
	**/
	var filter : String;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/createImageData)
	**/
	@:overload(function(imageData:js.html.ImageData):js.html.ImageData { })
	function createImageData(sw:Float, sh:Float, ?settings:ImageDataSettings):js.html.ImageData;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/getImageData)
	**/
	function getImageData(sx:Float, sy:Float, sw:Float, sh:Float, ?settings:ImageDataSettings):js.html.ImageData;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/putImageData)
	**/
	@:overload(function(imageData:js.html.ImageData, dx:Float, dy:Float, dirtyX:Float, dirtyY:Float, dirtyWidth:Float, dirtyHeight:Float):Void { })
	function putImageData(imageData:js.html.ImageData, dx:Float, dy:Float):Void;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/imageSmoothingEnabled)
	**/
	var imageSmoothingEnabled : Bool;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/imageSmoothingQuality)
	**/
	var imageSmoothingQuality : ImageSmoothingQuality;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/arc)
	**/
	function arc(x:Float, y:Float, radius:Float, startAngle:Float, endAngle:Float, ?counterclockwise:Bool):Void;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/arcTo)
	**/
	function arcTo(x1:Float, y1:Float, x2:Float, y2:Float, radius:Float):Void;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/bezierCurveTo)
	**/
	function bezierCurveTo(cp1x:Float, cp1y:Float, cp2x:Float, cp2y:Float, x:Float, y:Float):Void;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/closePath)
	**/
	function closePath():Void;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/ellipse)
	**/
	function ellipse(x:Float, y:Float, radiusX:Float, radiusY:Float, rotation:Float, startAngle:Float, endAngle:Float, ?counterclockwise:Bool):Void;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/lineTo)
	**/
	function lineTo(x:Float, y:Float):Void;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/moveTo)
	**/
	function moveTo(x:Float, y:Float):Void;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/quadraticCurveTo)
	**/
	function quadraticCurveTo(cpx:Float, cpy:Float, x:Float, y:Float):Void;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/rect)
	**/
	function rect(x:Float, y:Float, w:Float, h:Float):Void;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/roundRect)
	**/
	@:overload(function(x:Float, y:Float, w:Float, h:Float, ?radii:ts.AnyOf3<Float, js.html.DOMPointInit, Iterable<ts.AnyOf2<Float, js.html.DOMPointInit>>>):Void { })
	function roundRect(x:Float, y:Float, w:Float, h:Float, ?radii:ts.AnyOf3<Float, js.html.DOMPointInit, Array<ts.AnyOf2<Float, js.html.DOMPointInit>>>):Void;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/lineCap)
	**/
	var lineCap : CanvasLineCap;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/lineDashOffset)
	**/
	var lineDashOffset : Float;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/lineJoin)
	**/
	var lineJoin : CanvasLineJoin;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/lineWidth)
	**/
	var lineWidth : Float;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/miterLimit)
	**/
	var miterLimit : Float;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/getLineDash)
	**/
	function getLineDash():Array<Float>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/setLineDash)
	**/
	@:overload(function(segments:Iterable<Float>):Void { })
	function setLineDash(segments:Array<Float>):Void;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/clearRect)
	**/
	function clearRect(x:Float, y:Float, w:Float, h:Float):Void;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/fillRect)
	**/
	function fillRect(x:Float, y:Float, w:Float, h:Float):Void;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/strokeRect)
	**/
	function strokeRect(x:Float, y:Float, w:Float, h:Float):Void;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/shadowBlur)
	**/
	var shadowBlur : Float;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/shadowColor)
	**/
	var shadowColor : String;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/shadowOffsetX)
	**/
	var shadowOffsetX : Float;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/shadowOffsetY)
	**/
	var shadowOffsetY : Float;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/isContextLost)
	**/
	function isContextLost():Bool;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/reset)
	**/
	function reset():Void;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/restore)
	**/
	function restore():Void;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/save)
	**/
	function save():Void;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/fillText)
	**/
	function fillText(text:String, x:Float, y:Float, ?maxWidth:Float):Void;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/measureText)
	**/
	function measureText(text:String):js.html.TextMetrics;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/strokeText)
	**/
	function strokeText(text:String, x:Float, y:Float, ?maxWidth:Float):Void;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/direction)
	**/
	var direction : CanvasDirection;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/font)
	**/
	var font : String;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/fontKerning)
	**/
	var fontKerning : CanvasFontKerning;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/fontStretch)
	**/
	var fontStretch : CanvasFontStretch;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/fontVariantCaps)
	**/
	var fontVariantCaps : CanvasFontVariantCaps;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/letterSpacing)
	**/
	var letterSpacing : String;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/textAlign)
	**/
	var textAlign : CanvasTextAlign;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/textBaseline)
	**/
	var textBaseline : CanvasTextBaseline;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/textRendering)
	**/
	var textRendering : CanvasTextRendering;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/wordSpacing)
	**/
	var wordSpacing : String;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/getTransform)
	**/
	function getTransform():js.html.DOMMatrix;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/resetTransform)
	**/
	function resetTransform():Void;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/rotate)
	**/
	function rotate(angle:Float):Void;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/scale)
	**/
	function scale(x:Float, y:Float):Void;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/setTransform)
	**/
	@:overload(function(?transform:DOMMatrix2DInit):Void { })
	function setTransform(a:Float, b:Float, c:Float, d:Float, e:Float, f:Float):Void;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/transform)
	**/
	function transform(a:Float, b:Float, c:Float, d:Float, e:Float, f:Float):Void;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/translate)
	**/
	function translate(x:Float, y:Float):Void;
};