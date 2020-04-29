package js.lib;
@:native("ClientRectList") extern class ClientRectList {
	function new();
	final length : Float;
	function item(index:Float):js.html.IClientRect;
	static var prototype : IClientRectList;
}