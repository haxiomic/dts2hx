package ts.html;
@:native("MSGesture") extern class MSGesture {
	function new();
	var target : Element;
	function addPointer(pointerId:Float):Void;
	function stop():Void;
	static var prototype : MSGesture;
}