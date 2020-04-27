package js.html;
@:native("StyleMedia") @tsInterface extern class StyleMedia {
	function new();
	final type : String;
	function matchMedium(mediaquery:String):Bool;
	static var prototype : StyleMedia;
}