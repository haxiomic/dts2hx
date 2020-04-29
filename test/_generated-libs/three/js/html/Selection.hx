package js.html;
/**
	A Selection object represents the range of text selected by the user or the current position of the caret. To obtain a Selection object for examination or modification, call Window.getSelection().
**/
@:native("Selection") extern class Selection {
	function new();
	final anchorNode : Null<INode>;
	final anchorOffset : Float;
	final focusNode : Null<INode>;
	final focusOffset : Float;
	final isCollapsed : Bool;
	final rangeCount : Float;
	final type : String;
	function addRange(range:IRange):Void;
	function collapse(node:Null<INode>, ?offset:Float):Void;
	function collapseToEnd():Void;
	function collapseToStart():Void;
	function containsNode(node:INode, ?allowPartialContainment:Bool):Bool;
	function deleteFromDocument():Void;
	function empty():Void;
	function extend(node:INode, ?offset:Float):Void;
	function getRangeAt(index:Float):IRange;
	function removeAllRanges():Void;
	function removeRange(range:IRange):Void;
	function selectAllChildren(node:INode):Void;
	function setBaseAndExtent(anchorNode:INode, anchorOffset:Float, focusNode:INode, focusOffset:Float):Void;
	function setPosition(node:Null<INode>, ?offset:Float):Void;
	static var prototype : ISelection;
}