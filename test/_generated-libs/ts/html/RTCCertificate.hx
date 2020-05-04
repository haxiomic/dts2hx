package ts.html;
@:native("RTCCertificate") extern class RTCCertificate {
	function new();
	final expires : Float;
	function getFingerprints():Array<RTCDtlsFingerprint>;
	static var prototype : IRTCCertificate;
	static function getSupportedAlgorithms():Array<AlgorithmIdentifier>;
}