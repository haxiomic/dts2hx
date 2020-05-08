package ts.html;
@:native("TextTrackCueList") extern class TextTrackCueList {
	function new();
	final length : Float;
	function getCueById(id:String):TextTrackCue;
	function item(index:Float):TextTrackCue;
	static var prototype : TextTrackCueList;
}