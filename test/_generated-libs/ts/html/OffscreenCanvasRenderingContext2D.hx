package ts.html;
@:native("OffscreenCanvasRenderingContext2D") extern class OffscreenCanvasRenderingContext2D {
	function new();
	final canvas : IOffscreenCanvas;
	function commit():Void;
	static var prototype : IOffscreenCanvasRenderingContext2D;
}