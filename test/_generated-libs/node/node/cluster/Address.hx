package node.cluster;
extern interface Address {
	var address : String;
	var port : Float;
	var addressType : haxe.extern.EitherType<Float, String>;
}