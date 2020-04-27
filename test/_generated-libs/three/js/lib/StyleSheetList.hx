package js.lib;
/**
	A list of StyleSheet.
**/
@:native("StyleSheetList") @tsInterface extern class StyleSheetList {
	function new();
	final length : Float;
	function item(index:Float):Null<js.html.StyleSheet>;
	static var prototype : StyleSheetList;
}