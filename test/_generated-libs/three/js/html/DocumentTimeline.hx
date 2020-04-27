package js.html;
@:native("DocumentTimeline") @tsInterface extern class DocumentTimeline {
	function new(?options:DocumentTimelineOptions);
	final currentTime : Null<Float>;
	static var prototype : DocumentTimeline;
}