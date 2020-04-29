package js.html;
extern typedef IRTCCertificate = {
	final expires : Float;
	function getFingerprints():std.Array<RTCDtlsFingerprint>;
};