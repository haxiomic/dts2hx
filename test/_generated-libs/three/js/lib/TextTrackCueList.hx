package js.lib;
@:native("TextTrackCueList") extern class TextTrackCueList {
	function new();
	final length : Float;
	function getCueById(id:String):js.html.ITextTrackCue;
	function item(index:Float):js.html.ITextTrackCue;
	static var prototype : ITextTrackCueList;
}