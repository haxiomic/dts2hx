package js.html;
extern interface CanvasUserInterface {
	@:overload(function(path:Path2D, element:Element):Void { })
	function drawFocusIfNeeded(element:Element):Void;
	@:overload(function(path:Path2D):Void { })
	function scrollPathIntoView():Void;
}