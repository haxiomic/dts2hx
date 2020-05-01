package ts.html;
typedef StorageEventInit = {
	@:optional
	var key : String;
	@:optional
	var newValue : String;
	@:optional
	var oldValue : String;
	@:optional
	var storageArea : IStorage;
	@:optional
	var url : String;
	@:optional
	var bubbles : Bool;
	@:optional
	var cancelable : Bool;
	@:optional
	var composed : Bool;
};