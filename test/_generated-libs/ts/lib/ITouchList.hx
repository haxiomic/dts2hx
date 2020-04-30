package ts.lib;
/**
	A list of contact points on a touch surface. For example, if the user has three fingers on the touch surface (such as a screen or trackpad), the corresponding TouchList object would have one Touch object for each finger, for a total of three entries.
**/
extern typedef ITouchList = {
	final length : Float;
	function item(index:Float):Null<ts.html.ITouch>;
};