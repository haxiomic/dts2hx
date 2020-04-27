package js.html;
extern typedef CanvasImageData = { @:overload(function(imagedata:ImageData):ImageData { })
	function createImageData(sw:Float, sh:Float):ImageData; function getImageData(sx:Float, sy:Float, sw:Float, sh:Float):ImageData; @:overload(function(imagedata:ImageData, dx:Float, dy:Float, dirtyX:Float, dirtyY:Float, dirtyWidth:Float, dirtyHeight:Float):Void { })
	function putImageData(imagedata:ImageData, dx:Float, dy:Float):Void; };