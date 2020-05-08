package ts.html;
typedef ITextTrackCueList = {
	final length : Float;
	function getCueById(id:String):TextTrackCue;
	function item(index:Float):TextTrackCue;
};