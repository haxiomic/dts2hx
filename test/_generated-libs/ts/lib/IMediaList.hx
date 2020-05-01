package ts.lib;
typedef IMediaList = {
	final length : Float;
	var mediaText : String;
	function appendMedium(medium:String):Void;
	function deleteMedium(medium:String):Void;
	function item(index:Float):Null<String>;
	function toString():Float;
};