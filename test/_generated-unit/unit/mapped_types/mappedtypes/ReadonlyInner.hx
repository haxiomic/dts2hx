package unit.mapped_types.mappedtypes;

typedef ReadonlyInner = {
	final value : Float;
	final nested : {
		var a : Bool;
		var b : Bool;
	};
};