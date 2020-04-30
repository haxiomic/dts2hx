package ts.lib;
@:native("TextTrackCueList") extern class TextTrackCueList {
	function new();
	final length : Float;
	function getCueById(id:String):ts.html.ITextTrackCue;
	function item(index:Float):ts.html.ITextTrackCue;
	static var prototype : ITextTrackCueList;
}