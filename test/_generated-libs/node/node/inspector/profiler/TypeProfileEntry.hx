package node.inspector.profiler;
/**
	Source offset and types for a parameter or return value.
**/
extern typedef TypeProfileEntry = {
	/**
		Source offset of the parameter or end of function for return values.
	**/
	var offset : Float;
	/**
		The types for this parameter or return value.
	**/
	var types : std.Array<TypeObject>;
};