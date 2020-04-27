package global.nodejs;
extern interface Socket extends ReadWriteStream {
	@:optional
	var isTTY : Bool;
}