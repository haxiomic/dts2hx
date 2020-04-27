package js.html;
@:native("SVGElementInstanceList") @tsInterface extern class SVGElementInstanceList {
	function new();
	final length : Float;
	function item(index:Float):SVGElementInstance;
	static var prototype : SVGElementInstanceList;
}