package ts.html;
@:native("SVGElementInstanceList") extern class SVGElementInstanceList {
	function new();
	final length : Float;
	function item(index:Float):SVGElementInstance;
	static var prototype : SVGElementInstanceList;
}