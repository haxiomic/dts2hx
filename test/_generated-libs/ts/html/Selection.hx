package ts.html;
/**
	A Selection object represents the range of text selected by the user or the current position of the caret. To obtain a Selection object for examination or modification, call Window.getSelection().
**/
@:native("Selection") extern class Selection {
	function new();
	final anchorNode : Null<Node>;
	final anchorOffset : Float;
	final focusNode : Null<Node>;
	final focusOffset : Float;
	final isCollapsed : Bool;
	final rangeCount : Float;
	final type : String;
	function addRange(range:Range):Void;
	function collapse(node:Null<Node>, ?offset:Float):Void;
	function collapseToEnd():Void;
	function collapseToStart():Void;
	function containsNode(node:Node, ?allowPartialContainment:Bool):Bool;
	function deleteFromDocument():Void;
	function empty():Void;
	function extend(node:Node, ?offset:Float):Void;
	function getRangeAt(index:Float):Range;
	function removeAllRanges():Void;
	function removeRange(range:Range):Void;
	function selectAllChildren(node:Node):Void;
	function setBaseAndExtent(anchorNode:Node, anchorOffset:Float, focusNode:Node, focusOffset:Float):Void;
	function setPosition(node:Null<Node>, ?offset:Float):Void;
	static var prototype : Selection;
}