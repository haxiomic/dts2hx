package js.lib;
@:native("ClientRectList") @tsInterface extern class ClientRectList {
	function new();
	final length : Float;
	function item(index:Float):js.html.ClientRect;
	static var prototype : ClientRectList;
}