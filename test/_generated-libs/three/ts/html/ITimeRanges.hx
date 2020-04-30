package ts.html;
/**
	Used to represent a set of time ranges, primarily for the purpose of tracking which portions of media have been buffered when loading it for use by the <audio> and <video> elements.
**/
extern typedef ITimeRanges = {
	final length : Float;
	function end(index:Float):Float;
	function start(index:Float):Float;
};