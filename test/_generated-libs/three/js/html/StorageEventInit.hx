package js.html;
extern typedef StorageEventInit = EventInit & { @:optional
	var key : String; @:optional
	var newValue : String; @:optional
	var oldValue : String; @:optional
	var storageArea : Storage; @:optional
	var url : String; };