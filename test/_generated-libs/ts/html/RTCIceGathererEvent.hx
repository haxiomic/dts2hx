package ts.html;
@:native("RTCIceGathererEvent") extern class RTCIceGathererEvent {
	function new();
	final candidate : ts.AnyOf2<RTCIceCandidateDictionary, RTCIceCandidateComplete>;
	static var prototype : IRTCIceGathererEvent;
}