package ts.html;
extern typedef IRTCCertificate = {
	final expires : Float;
	function getFingerprints():std.Array<RTCDtlsFingerprint>;
};