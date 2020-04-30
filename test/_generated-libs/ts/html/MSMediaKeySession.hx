package ts.html;
@:native("MSMediaKeySession") extern class MSMediaKeySession {
	function new();
	final error : Null<IMSMediaKeyError>;
	final keySystem : String;
	final sessionId : String;
	function close():Void;
	function update(key:ts.lib.IUint8Array):Void;
	static var prototype : IMSMediaKeySession;
}