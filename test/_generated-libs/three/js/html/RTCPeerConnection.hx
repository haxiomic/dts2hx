package js.html;
/**
	A WebRTC connection between the local computer and a remote peer. It provides methods to connect to a remote peer, maintain and monitor the connection, and close the connection once it's no longer needed.
**/
@:native("RTCPeerConnection") @tsInterface extern class RTCPeerConnection {
	function new(?configuration:RTCConfiguration);
	final canTrickleIceCandidates : Null<Bool>;
	final connectionState : String;
	final currentLocalDescription : Null<RTCSessionDescription>;
	final currentRemoteDescription : Null<RTCSessionDescription>;
	final iceConnectionState : String;
	final iceGatheringState : String;
	final idpErrorInfo : Null<String>;
	final idpLoginUrl : Null<String>;
	final localDescription : Null<RTCSessionDescription>;
	var onconnectionstatechange : Null<(ev:Event) -> Any>;
	var ondatachannel : Null<(ev:RTCDataChannelEvent) -> Any>;
	var onicecandidate : Null<(ev:RTCPeerConnectionIceEvent) -> Any>;
	var onicecandidateerror : Null<(ev:RTCPeerConnectionIceErrorEvent) -> Any>;
	var oniceconnectionstatechange : Null<(ev:Event) -> Any>;
	var onicegatheringstatechange : Null<(ev:Event) -> Any>;
	var onnegotiationneeded : Null<(ev:Event) -> Any>;
	var onsignalingstatechange : Null<(ev:Event) -> Any>;
	var onstatsended : Null<(ev:RTCStatsEvent) -> Any>;
	var ontrack : Null<(ev:RTCTrackEvent) -> Any>;
	final peerIdentity : js.lib.Promise<RTCIdentityAssertion>;
	final pendingLocalDescription : Null<RTCSessionDescription>;
	final pendingRemoteDescription : Null<RTCSessionDescription>;
	final remoteDescription : Null<RTCSessionDescription>;
	final sctp : Null<RTCSctpTransport>;
	final signalingState : String;
	function addIceCandidate(candidate:haxe.extern.EitherType<RTCIceCandidate, RTCIceCandidateInit>):js.lib.Promise<Void>;
	function addTrack(track:MediaStreamTrack, streams:std.Array<MediaStream>):RTCRtpSender;
	function addTransceiver(trackOrKind:haxe.extern.EitherType<String, MediaStreamTrack>, ?init:RTCRtpTransceiverInit):js.lib.RTCRtpTransceiver;
	function close():Void;
	function createAnswer(?options:RTCOfferOptions):js.lib.Promise<RTCSessionDescriptionInit>;
	function createDataChannel(label:String, ?dataChannelDict:RTCDataChannelInit):RTCDataChannel;
	function createOffer(?options:RTCOfferOptions):js.lib.Promise<RTCSessionDescriptionInit>;
	function getConfiguration():RTCConfiguration;
	function getIdentityAssertion():js.lib.Promise<String>;
	function getReceivers():std.Array<RTCRtpReceiver>;
	function getSenders():std.Array<RTCRtpSender>;
	function getStats(?selector:MediaStreamTrack):js.lib.Promise<js.lib.RTCStatsReport>;
	function getTransceivers():std.Array<js.lib.RTCRtpTransceiver>;
	function removeTrack(sender:RTCRtpSender):Void;
	function setConfiguration(configuration:RTCConfiguration):Void;
	function setIdentityProvider(provider:String, ?options:RTCIdentityProviderOptions):Void;
	function setLocalDescription(description:RTCSessionDescriptionInit):js.lib.Promise<Void>;
	function setRemoteDescription(description:RTCSessionDescriptionInit):js.lib.Promise<Void>;
	/**
		Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
		
		The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
		
		When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
		
		When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in §2.8 Observing event listeners.
		
		When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
		
		The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
		
		
		
		Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
		
		The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
		
		When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
		
		When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in §2.8 Observing event listeners.
		
		When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
		
		The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
	**/
	@:overload(function(type:String, listener:haxe.extern.EitherType<EventListener, EventListenerObject>, ?options:haxe.extern.EitherType<Bool, AddEventListenerOptions>):Void { })
	function addEventListener<K:(String)>(type:K, listener:(ev:Any) -> Any, ?options:haxe.extern.EitherType<Bool, AddEventListenerOptions>):Void;
	/**
		Removes the event listener in target's event listener list with the same type, callback, and options.
		
		
		
		Removes the event listener in target's event listener list with the same type, callback, and options.
	**/
	@:overload(function(type:String, listener:haxe.extern.EitherType<EventListener, EventListenerObject>, ?options:haxe.extern.EitherType<Bool, EventListenerOptions>):Void { })
	function removeEventListener<K:(String)>(type:K, listener:(ev:Any) -> Any, ?options:haxe.extern.EitherType<Bool, EventListenerOptions>):Void;
	/**
		Dispatches a synthetic event event to target and returns true if either event's cancelable attribute value is false or its preventDefault() method was not invoked, and false otherwise.
	**/
	function dispatchEvent(event:Event):Bool;
	static var prototype : RTCPeerConnection;
	static function generateCertificate(keygenAlgorithm:haxe.extern.EitherType<String, Algorithm>):js.lib.Promise<RTCCertificate>;
	static function getDefaultIceServers():std.Array<RTCIceServer>;
}