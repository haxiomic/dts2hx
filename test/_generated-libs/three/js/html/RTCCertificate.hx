package js.html;
@:native("RTCCertificate") @tsInterface extern class RTCCertificate {
	function new();
	final expires : Float;
	function getFingerprints():std.Array<RTCDtlsFingerprint>;
	static var prototype : RTCCertificate;
	static function getSupportedAlgorithms():std.Array<haxe.extern.EitherType<String, Algorithm>>;
}