package ts.html;
@:native("RTCIceGathererEvent") extern class RTCIceGathererEvent {
	function new();
	final candidate : haxe.extern.EitherType<RTCIceCandidateDictionary, RTCIceCandidateComplete>;
	static var prototype : IRTCIceGathererEvent;
}