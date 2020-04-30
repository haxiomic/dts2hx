package ts.lib;
@:native("ClientRectList") extern class ClientRectList {
	function new();
	final length : Float;
	function item(index:Float):ts.html.IClientRect;
	static var prototype : IClientRectList;
}