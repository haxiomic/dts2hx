package ts.html;
typedef IRTCCertificate = {
	final expires : Float;
	function getFingerprints():std.Array<RTCDtlsFingerprint>;
};