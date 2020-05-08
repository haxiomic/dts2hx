package ts.html;
typedef IMSMediaKeys = {
	final keySystem : String;
	function createSession(type:String, initData:ts.lib.Uint8Array, ?cdmData:ts.lib.Uint8Array):MSMediaKeySession;
};