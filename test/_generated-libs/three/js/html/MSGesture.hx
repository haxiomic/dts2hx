package js.html;
@:native("MSGesture") @tsInterface extern class MSGesture {
	function new();
	var target : Element;
	function addPointer(pointerId:Float):Void;
	function stop():Void;
	static var prototype : MSGesture;
}