package ts.html;
/**
	A list of contact points on a touch surface. For example, if the user has three fingers on the touch surface (such as a screen or trackpad), the corresponding TouchList object would have one Touch object for each finger, for a total of three entries.
**/
@:native("TouchList") extern class TouchList {
	function new();
	final length : Float;
	function item(index:Float):Null<Touch>;
	static var prototype : TouchList;
}