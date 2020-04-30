package ts.html;
@:native("MediaEncryptedEvent") extern class MediaEncryptedEvent {
	function new(type:String, ?eventInitDict:MediaEncryptedEventInit);
	final initData : Null<ts.lib.IArrayBuffer>;
	final initDataType : String;
	static var prototype : IMediaEncryptedEvent;
}