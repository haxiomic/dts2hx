package ts.html;
typedef IMSGesture = {
	var target : Element;
	function addPointer(pointerId:Float):Void;
	function stop():Void;
};