package ts.html;
@:native("DOMRectList") extern class DOMRectList {
	function new();
	final length : Float;
	function item(index:Float):Null<DOMRect>;
	static var prototype : DOMRectList;
}