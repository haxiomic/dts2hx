package js.html;
extern interface ScrollIntoViewOptions extends ScrollOptions {
	@:optional
	var block : String;
	@:native("inline")
	@:optional
	var inline_ : String;
}