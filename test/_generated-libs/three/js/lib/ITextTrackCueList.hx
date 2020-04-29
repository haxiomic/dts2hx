package js.lib;
extern typedef ITextTrackCueList = {
	final length : Float;
	function getCueById(id:String):js.html.ITextTrackCue;
	function item(index:Float):js.html.ITextTrackCue;
};