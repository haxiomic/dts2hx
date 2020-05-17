package node.v8;

typedef HeapSpaceInfo = {
	var space_name : String;
	var space_size : Float;
	var space_used_size : Float;
	var space_available_size : Float;
	var physical_space_size : Float;
};