package js.html;
/**
	Used to represent a set of time ranges, primarily for the purpose of tracking which portions of media have been buffered when loading it for use by the <audio> and <video> elements.
**/
@:native("TimeRanges") @tsInterface extern class TimeRanges {
	function new();
	final length : Float;
	function end(index:Float):Float;
	function start(index:Float):Float;
	static var prototype : TimeRanges;
}