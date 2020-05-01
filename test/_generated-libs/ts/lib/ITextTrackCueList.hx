package ts.lib;
typedef ITextTrackCueList = {
	final length : Float;
	function getCueById(id:String):ts.html.ITextTrackCue;
	function item(index:Float):ts.html.ITextTrackCue;
};