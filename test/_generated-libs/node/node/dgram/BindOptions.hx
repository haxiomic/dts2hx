package node.dgram;
typedef BindOptions = {
	var port : Float;
	@:optional
	var address : String;
	@:optional
	var exclusive : Bool;
};