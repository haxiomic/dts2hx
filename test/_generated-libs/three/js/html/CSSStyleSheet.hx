package js.html;
/**
	A single CSS style sheet. It inherits properties and methods from its parent, StyleSheet.
**/
@:native("CSSStyleSheet") extern class CSSStyleSheet {
	function new();
	final cssRules : js.lib.ICSSRuleList;
	var cssText : String;
	final id : String;
	final imports : js.lib.IStyleSheetList;
	final isAlternate : Bool;
	final isPrefAlternate : Bool;
	final ownerRule : Null<ICSSRule>;
	final owningElement : IElement;
	final pages : Any;
	final readOnly : Bool;
	final rules : js.lib.ICSSRuleList;
	function addImport(bstrURL:String, ?lIndex:Float):Float;
	function addPageRule(bstrSelector:String, bstrStyle:String, ?lIndex:Float):Float;
	function addRule(bstrSelector:String, ?bstrStyle:String, ?lIndex:Float):Float;
	function deleteRule(?index:Float):Void;
	function insertRule(rule:String, ?index:Float):Float;
	function removeImport(lIndex:Float):Void;
	function removeRule(lIndex:Float):Void;
	var disabled : Bool;
	final href : Null<String>;
	final media : js.lib.IMediaList;
	final ownerNode : INode;
	final parentStyleSheet : Null<IStyleSheet>;
	final title : Null<String>;
	final type : String;
	static var prototype : ICSSStyleSheet;
}