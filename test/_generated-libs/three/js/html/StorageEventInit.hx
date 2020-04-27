package js.html;
extern interface StorageEventInit extends EventInit {
	@:optional
	var key : String;
	@:optional
	var newValue : String;
	@:optional
	var oldValue : String;
	@:optional
	var storageArea : Storage;
	@:optional
	var url : String;
}