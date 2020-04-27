package js.html;
extern interface DocumentOrShadowRoot {
	final activeElement : Null<Element>;
	/**
		Returns document's fullscreen element.
	**/
	final fullscreenElement : Null<Element>;
	final pointerLockElement : Null<Element>;
	/**
		Retrieves a collection of styleSheet objects representing the style sheets that correspond to each instance of a link or style object in the document.
	**/
	final styleSheets : js.lib.StyleSheetList;
	function caretPositionFromPoint(x:Float, y:Float):Null<CaretPosition>;
	function caretRangeFromPoint(x:Float, y:Float):Range;
	function elementFromPoint(x:Float, y:Float):Null<Element>;
	function elementsFromPoint(x:Float, y:Float):std.Array<Element>;
	function getSelection():Null<Selection>;
}