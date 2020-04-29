package js.lib;
@:native("DOMRectList") extern class DOMRectList {
	function new();
	final length : Float;
	function item(index:Float):Null<js.html.IDOMRect>;
	static var prototype : IDOMRectList;
}