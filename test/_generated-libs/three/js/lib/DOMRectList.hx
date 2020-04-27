package js.lib;
@:native("DOMRectList") @tsInterface extern class DOMRectList {
	function new();
	final length : Float;
	function item(index:Float):Null<js.html.DOMRect>;
	static var prototype : DOMRectList;
}