package ts.html;
@:native("CSSImportRule") extern class CSSImportRule {
	function new();
	final href : String;
	final media : ts.lib.IMediaList;
	final styleSheet : ICSSStyleSheet;
	static var prototype : ICSSImportRule;
}