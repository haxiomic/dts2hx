package ts.html;
typedef IMSGesture = {
	var target : IElement;
	function addPointer(pointerId:Float):Void;
	function stop():Void;
};