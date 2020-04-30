package ts.html;
/**
	A StorageEvent is sent to a window when a storage area it has access to is changed within the context of another document.
**/
@:native("StorageEvent") extern class StorageEvent {
	function new(type:String, ?eventInitDict:StorageEventInit);
	/**
		Returns the key of the storage item being changed.
	**/
	final key : Null<String>;
	/**
		Returns the new value of the key of the storage item whose value is being changed.
	**/
	final newValue : Null<String>;
	/**
		Returns the old value of the key of the storage item whose value is being changed.
	**/
	final oldValue : Null<String>;
	/**
		Returns the Storage object that was affected.
	**/
	final storageArea : Null<IStorage>;
	/**
		Returns the URL of the document whose storage item changed.
	**/
	final url : String;
	static var prototype : IStorageEvent;
}