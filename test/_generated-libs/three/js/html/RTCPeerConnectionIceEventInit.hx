package js.html;
extern typedef RTCPeerConnectionIceEventInit = EventInit & { @:optional
	var candidate : RTCIceCandidate; @:optional
	var url : String; };