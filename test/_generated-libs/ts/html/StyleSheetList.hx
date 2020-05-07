package ts.html;
/**
	A list of StyleSheet.
**/
@:native("StyleSheetList") extern class StyleSheetList {
	function new();
	final length : Float;
	function item(index:Float):Null<StyleSheet>;
	static var prototype : StyleSheetList;
}