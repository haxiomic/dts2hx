package node.dgram;
extern typedef BindOptions = {
	var port : Float;
	@:optional
	var address : String;
	@:optional
	var exclusive : Bool;
};