package ts.html;
@:native("ClientRectList") extern class ClientRectList {
	function new();
	final length : Float;
	function item(index:Float):ClientRect;
	static var prototype : ClientRectList;
}