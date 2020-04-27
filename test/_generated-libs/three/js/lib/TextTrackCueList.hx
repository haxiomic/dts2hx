package js.lib;
@:native("TextTrackCueList") @tsInterface extern class TextTrackCueList {
	function new();
	final length : Float;
	function getCueById(id:String):js.html.TextTrackCue;
	function item(index:Float):js.html.TextTrackCue;
	static var prototype : TextTrackCueList;
}