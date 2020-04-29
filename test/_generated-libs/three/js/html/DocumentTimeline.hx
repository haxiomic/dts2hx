package js.html;
@:native("DocumentTimeline") extern class DocumentTimeline {
	function new(?options:DocumentTimelineOptions);
	final currentTime : Null<Float>;
	static var prototype : IDocumentTimeline;
}