package ts.html;
@:native("StyleMedia") extern class StyleMedia {
	function new();
	final type : String;
	function matchMedium(mediaquery:String):Bool;
	static var prototype : IStyleMedia;
}