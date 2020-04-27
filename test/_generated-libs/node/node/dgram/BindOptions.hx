package node.dgram;
extern interface BindOptions {
	var port : Float;
	@:optional
	var address : String;
	@:optional
	var exclusive : Bool;
}