package ts.html;
@:native("RTCCertificate") extern class RTCCertificate {
	function new();
	final expires : Float;
	function getFingerprints():std.Array<RTCDtlsFingerprint>;
	static var prototype : IRTCCertificate;
	static function getSupportedAlgorithms():std.Array<ts.AnyOf2<String, Algorithm>>;
}