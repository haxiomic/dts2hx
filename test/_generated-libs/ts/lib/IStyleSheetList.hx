package ts.lib;
/**
	A list of StyleSheet.
**/
typedef IStyleSheetList = {
	final length : Float;
	function item(index:Float):Null<ts.html.IStyleSheet>;
};