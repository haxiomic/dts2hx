package js.html;
@:native("MSMediaKeys") @tsInterface extern class MSMediaKeys {
	function new(keySystem:String);
	final keySystem : String;
	function createSession(type:String, initData:js.lib.Uint8Array, ?cdmData:js.lib.Uint8Array):MSMediaKeySession;
	static var prototype : MSMediaKeys;
	static function isTypeSupported(keySystem:String, ?type:String):Bool;
	static function isTypeSupportedWithFeatures(keySystem:String, ?type:String):String;
}