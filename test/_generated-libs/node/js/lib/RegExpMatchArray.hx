package js.lib;
extern typedef RegExpMatchArray = std.Array<String> & { @:optional
	var index : Float; @:optional
	var input : String; @:optional
	var groups : { }; };