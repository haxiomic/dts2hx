package ts.lib;
/**
	A list of StyleSheet.
**/
@:native("StyleSheetList") extern class StyleSheetList {
	function new();
	final length : Float;
	function item(index:Float):Null<ts.html.IStyleSheet>;
	static var prototype : IStyleSheetList;
}