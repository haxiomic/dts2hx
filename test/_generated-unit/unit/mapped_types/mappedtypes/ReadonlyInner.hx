package unit.mapped_types.mappedtypes;

typedef ReadonlyInner = {
	var value : Float;
	var nested : {
		var a : Bool;
		var b : Bool;
	};
};