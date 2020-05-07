package ts.html;
/**
	A single style sheet. CSS style sheets will further implement the more specialized CSSStyleSheet interface.
**/
@:native("StyleSheet") extern class StyleSheet {
	function new();
	var disabled : Bool;
	final href : Null<String>;
	final media : MediaList;
	final ownerNode : Node;
	final parentStyleSheet : Null<StyleSheet>;
	final title : Null<String>;
	final type : String;
	static var prototype : StyleSheet;
}