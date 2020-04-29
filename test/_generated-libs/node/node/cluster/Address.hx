package node.cluster;
extern typedef Address = {
	var address : String;
	var port : Float;
	var addressType : haxe.extern.EitherType<Float, String>;
};