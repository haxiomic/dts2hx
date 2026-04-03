package js.html;

/**
	The **`RTCIceCandidatePair`** dictionary describes a pair of ICE candidates which together comprise a description of a viable connection between two WebRTC endpoints.
**/
typedef RTCIceCandidatePair = {
	/**
		The **`local`** property of the **RTCIceCandidatePair** dictionary specifies the RTCIceCandidate which describes the configuration of the local end of a viable WebRTC connection.
	**/
	var local : js.html.rtc.IceCandidate;
	/**
		The **`remote`** property of the **RTCIceCandidatePair** dictionary specifies the viable WebRTC connection.
	**/
	var remote : js.html.rtc.IceCandidate;
};