package js.html;
@:native("RTCCertificate") extern class RTCCertificate {
	function new();
	final expires : Float;
	function getFingerprints():std.Array<RTCDtlsFingerprint>;
	static var prototype : IRTCCertificate;
	static function getSupportedAlgorithms():std.Array<haxe.extern.EitherType<String, Algorithm>>;
}