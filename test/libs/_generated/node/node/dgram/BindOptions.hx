package node.dgram;
extern interface BindOptions {
	var port : Float;
	@:optional
	var address : Null<String>;
	@:optional
	var exclusive : Null<Bool>;
}