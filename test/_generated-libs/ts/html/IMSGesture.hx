package ts.html;
extern typedef IMSGesture = {
	var target : IElement;
	function addPointer(pointerId:Float):Void;
	function stop():Void;
};