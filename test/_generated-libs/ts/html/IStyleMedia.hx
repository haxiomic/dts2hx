package ts.html;
typedef IStyleMedia = {
	final type : String;
	function matchMedium(mediaquery:String):Bool;
};