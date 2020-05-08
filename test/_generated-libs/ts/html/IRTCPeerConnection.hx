package ts.html;
/**
	A WebRTC connection between the local computer and a remote peer. It provides methods to connect to a remote peer, maintain and monitor the connection, and close the connection once it's no longer needed.
**/
typedef IRTCPeerConnection = {
	final canTrickleIceCandidates : Null<Bool>;
	final connectionState : RTCPeerConnectionState;
	final currentLocalDescription : Null<RTCSessionDescription>;
	final currentRemoteDescription : Null<RTCSessionDescription>;
	final iceConnectionState : RTCIceTransportState;
	final iceGatheringState : RTCIceGathererState;
	final idpErrorInfo : Null<String>;
	final idpLoginUrl : Null<String>;
	final localDescription : Null<RTCSessionDescription>;
	var onconnectionstatechange : Null<(ev:Event) -> Dynamic>;
	var ondatachannel : Null<(ev:RTCDataChannelEvent) -> Dynamic>;
	var onicecandidate : Null<(ev:RTCPeerConnectionIceEvent) -> Dynamic>;
	var onicecandidateerror : Null<(ev:RTCPeerConnectionIceErrorEvent) -> Dynamic>;
	var oniceconnectionstatechange : Null<(ev:Event) -> Dynamic>;
	var onicegatheringstatechange : Null<(ev:Event) -> Dynamic>;
	var onnegotiationneeded : Null<(ev:Event) -> Dynamic>;
	var onsignalingstatechange : Null<(ev:Event) -> Dynamic>;
	var onstatsended : Null<(ev:RTCStatsEvent) -> Dynamic>;
	var ontrack : Null<(ev:RTCTrackEvent) -> Dynamic>;
	final peerIdentity : ts.lib.Promise<RTCIdentityAssertion>;
	final pendingLocalDescription : Null<RTCSessionDescription>;
	final pendingRemoteDescription : Null<RTCSessionDescription>;
	final remoteDescription : Null<RTCSessionDescription>;
	final sctp : Null<RTCSctpTransport>;
	final signalingState : RTCSignalingState;
	function addIceCandidate(candidate:ts.AnyOf2<RTCIceCandidate, RTCIceCandidateInit>):ts.lib.Promise<Void>;
	function addTrack(track:MediaStreamTrack, streams:haxe.extern.Rest<MediaStream>):RTCRtpSender;
	function addTransceiver(trackOrKind:ts.AnyOf2<String, MediaStreamTrack>, ?init:RTCRtpTransceiverInit):RTCRtpTransceiver;
	function close():Void;
	function createAnswer(?options:RTCOfferOptions):ts.lib.Promise<RTCSessionDescriptionInit>;
	function createDataChannel(label:String, ?dataChannelDict:RTCDataChannelInit):RTCDataChannel;
	function createOffer(?options:RTCOfferOptions):ts.lib.Promise<RTCSessionDescriptionInit>;
	function getConfiguration():RTCConfiguration;
	function getIdentityAssertion():ts.lib.Promise<String>;
	function getReceivers():Array<RTCRtpReceiver>;
	function getSenders():Array<RTCRtpSender>;
	function getStats(?selector:MediaStreamTrack):ts.lib.Promise<RTCStatsReport>;
	function getTransceivers():Array<RTCRtpTransceiver>;
	function removeTrack(sender:RTCRtpSender):Void;
	function setConfiguration(configuration:RTCConfiguration):Void;
	function setIdentityProvider(provider:String, ?options:RTCIdentityProviderOptions):Void;
	function setLocalDescription(description:RTCSessionDescriptionInit):ts.lib.Promise<Void>;
	function setRemoteDescription(description:RTCSessionDescriptionInit):ts.lib.Promise<Void>;
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
	@:overload(function(type:String, listener:EventListenerOrEventListenerObject, ?options:ts.AnyOf2<Bool, AddEventListenerOptions>):Void { })
	function addEventListener<K>(type:K, listener:(ev:Dynamic) -> Dynamic, ?options:ts.AnyOf2<Bool, AddEventListenerOptions>):Void;
	/**
		Removes the event listener in target's event listener list with the same type, callback, and options.
		
		Removes the event listener in target's event listener list with the same type, callback, and options.
	**/
	@:overload(function(type:String, listener:EventListenerOrEventListenerObject, ?options:ts.AnyOf2<Bool, EventListenerOptions>):Void { })
	function removeEventListener<K>(type:K, listener:(ev:Dynamic) -> Dynamic, ?options:ts.AnyOf2<Bool, EventListenerOptions>):Void;
	/**
		Dispatches a synthetic event event to target and returns true if either event's cancelable attribute value is false or its preventDefault() method was not invoked, and false otherwise.
	**/
	function dispatchEvent(event:Event):Bool;
};