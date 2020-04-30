package ts.html;
/**
	The CanvasRenderingContext2D interface, part of the Canvas API, provides the 2D rendering context for the drawing surface of a <canvas> element. It is used for drawing shapes, text, images, and other objects.
**/
@:native("CanvasRenderingContext2D") extern class CanvasRenderingContext2D {
	function new();
	final canvas : IHTMLCanvasElement;
	static var prototype : ICanvasRenderingContext2D;
}