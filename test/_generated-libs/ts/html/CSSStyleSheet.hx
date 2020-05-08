package ts.html;
/**
	A single CSS style sheet. It inherits properties and methods from its parent, StyleSheet.
**/
@:native("CSSStyleSheet") extern class CSSStyleSheet {
	function new();
	final cssRules : CSSRuleList;
	var cssText : String;
	final id : String;
	final imports : StyleSheetList;
	final isAlternate : Bool;
	final isPrefAlternate : Bool;
	final ownerRule : Null<CSSRule>;
	final owningElement : Element;
	final pages : Dynamic;
	final readOnly : Bool;
	final rules : CSSRuleList;
	function addImport(bstrURL:String, ?lIndex:Float):Float;
	function addPageRule(bstrSelector:String, bstrStyle:String, ?lIndex:Float):Float;
	function addRule(bstrSelector:String, ?bstrStyle:String, ?lIndex:Float):Float;
	function deleteRule(?index:Float):Void;
	function insertRule(rule:String, ?index:Float):Float;
	function removeImport(lIndex:Float):Void;
	function removeRule(lIndex:Float):Void;
	var disabled : Bool;
	final href : Null<String>;
	final media : MediaList;
	final ownerNode : Node;
	final parentStyleSheet : Null<StyleSheet>;
	final title : Null<String>;
	final type : String;
	static var prototype : CSSStyleSheet;
}