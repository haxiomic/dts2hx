package node.cluster;

typedef Address = {
	var address : String;
	var port : Float;
	var addressType : ts.AnyOf2<Float, String>;
};