package js.lib;
/**
	A list of StyleSheet.
**/
extern typedef IStyleSheetList = {
	final length : Float;
	function item(index:Float):Null<js.html.IStyleSheet>;
};