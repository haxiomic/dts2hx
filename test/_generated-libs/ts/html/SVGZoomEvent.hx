package ts.html;
@:native("SVGZoomEvent") extern class SVGZoomEvent {
	function new();
	final newScale : Float;
	final newTranslate : IDOMPoint;
	final previousScale : Float;
	final previousTranslate : IDOMPoint;
	final zoomRectScreen : IDOMRect;
	static var prototype : ISVGZoomEvent;
}