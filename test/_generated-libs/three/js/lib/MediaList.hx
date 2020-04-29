package js.lib;
@:native("MediaList") extern class MediaList {
	function new();
	final length : Float;
	var mediaText : String;
	function appendMedium(medium:String):Void;
	function deleteMedium(medium:String):Void;
	function item(index:Float):Null<String>;
	function toString():Float;
	static var prototype : IMediaList;
}