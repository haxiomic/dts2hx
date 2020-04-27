package js.html;
extern typedef ScrollIntoViewOptions = ScrollOptions & { @:optional
	var block : String; @:native("inline")
	@:optional
	var inline_ : String; };