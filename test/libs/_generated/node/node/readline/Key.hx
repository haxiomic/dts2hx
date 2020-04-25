package node.readline;
extern interface Key {
	@:optional
	var sequence : Null<String>;
	@:optional
	var name : Null<String>;
	@:optional
	var ctrl : Null<Bool>;
	@:optional
	var meta : Null<Bool>;
	@:optional
	var shift : Null<Bool>;
}