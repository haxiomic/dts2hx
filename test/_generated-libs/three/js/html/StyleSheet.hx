package js.html;
/**
	A single style sheet. CSS style sheets will further implement the more specialized CSSStyleSheet interface.
**/
@:native("StyleSheet") extern class StyleSheet {
	function new();
	var disabled : Bool;
	final href : Null<String>;
	final media : js.lib.IMediaList;
	final ownerNode : INode;
	final parentStyleSheet : Null<IStyleSheet>;
	final title : Null<String>;
	final type : String;
	static var prototype : IStyleSheet;
}