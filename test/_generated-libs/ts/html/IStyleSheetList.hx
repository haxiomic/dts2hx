package ts.html;
/**
	A list of StyleSheet.
**/
typedef IStyleSheetList = {
	final length : Float;
	function item(index:Float):Null<StyleSheet>;
};