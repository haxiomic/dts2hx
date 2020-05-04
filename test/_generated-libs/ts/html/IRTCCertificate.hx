package ts.html;
typedef IRTCCertificate = {
	final expires : Float;
	function getFingerprints():Array<RTCDtlsFingerprint>;
};