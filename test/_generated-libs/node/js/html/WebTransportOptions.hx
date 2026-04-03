package js.html;

typedef WebTransportOptions = {
	@:optional
	var allowPooling : Bool;
	@:optional
	var congestionControl : WebTransportCongestionControl;
	@:optional
	var requireUnreliable : Bool;
	@:optional
	var serverCertificateHashes : Array<WebTransportHash>;
};