package ts.html;
/**
	A single CSS rule. There are several types of rules, listed in the Type constants section below.
**/
@:native("CSSRule") extern class CSSRule {
	function new();
	var cssText : String;
	final parentRule : Null<CSSRule>;
	final parentStyleSheet : Null<CSSStyleSheet>;
	final type : Float;
	final CHARSET_RULE : Float;
	final FONT_FACE_RULE : Float;
	final IMPORT_RULE : Float;
	final KEYFRAMES_RULE : Float;
	final KEYFRAME_RULE : Float;
	final MEDIA_RULE : Float;
	final NAMESPACE_RULE : Float;
	final PAGE_RULE : Float;
	final STYLE_RULE : Float;
	final SUPPORTS_RULE : Float;
	final UNKNOWN_RULE : Float;
	final VIEWPORT_RULE : Float;
	static var prototype : CSSRule;
	@:native("CHARSET_RULE")
	static final CHARSET_RULE_ : Float;
	@:native("FONT_FACE_RULE")
	static final FONT_FACE_RULE_ : Float;
	@:native("IMPORT_RULE")
	static final IMPORT_RULE_ : Float;
	@:native("KEYFRAMES_RULE")
	static final KEYFRAMES_RULE_ : Float;
	@:native("KEYFRAME_RULE")
	static final KEYFRAME_RULE_ : Float;
	@:native("MEDIA_RULE")
	static final MEDIA_RULE_ : Float;
	@:native("NAMESPACE_RULE")
	static final NAMESPACE_RULE_ : Float;
	@:native("PAGE_RULE")
	static final PAGE_RULE_ : Float;
	@:native("STYLE_RULE")
	static final STYLE_RULE_ : Float;
	@:native("SUPPORTS_RULE")
	static final SUPPORTS_RULE_ : Float;
	@:native("UNKNOWN_RULE")
	static final UNKNOWN_RULE_ : Float;
	@:native("VIEWPORT_RULE")
	static final VIEWPORT_RULE_ : Float;
}