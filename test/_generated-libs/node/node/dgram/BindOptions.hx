package node.dgram;

typedef BindOptions = {
	@:optional
	var port : Float;
	@:optional
	var address : String;
	@:optional
	var exclusive : Bool;
	@:optional
	var fd : Float;
};