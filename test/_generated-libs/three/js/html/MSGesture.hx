package js.html;
@:native("MSGesture") extern class MSGesture {
	function new();
	var target : IElement;
	function addPointer(pointerId:Float):Void;
	function stop():Void;
	static var prototype : IMSGesture;
}