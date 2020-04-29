package js.html;
extern typedef IMSMediaKeys = {
	final keySystem : String;
	function createSession(type:String, initData:js.lib.IUint8Array, ?cdmData:js.lib.IUint8Array):IMSMediaKeySession;
};