package ts.lib;
@:native("DOMRectList") extern class DOMRectList {
	function new();
	final length : Float;
	function item(index:Float):Null<ts.html.IDOMRect>;
	static var prototype : IDOMRectList;
}