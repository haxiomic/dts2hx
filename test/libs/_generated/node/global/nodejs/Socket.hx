package global.nodejs;
extern interface Socket extends ReadWriteStream {
	@:optional
	var isTTY : Null<Bool>;
}