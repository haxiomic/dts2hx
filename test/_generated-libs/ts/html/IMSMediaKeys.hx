package ts.html;
typedef IMSMediaKeys = {
	final keySystem : String;
	function createSession(type:String, initData:ts.lib.IUint8Array, ?cdmData:ts.lib.IUint8Array):IMSMediaKeySession;
};