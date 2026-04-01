package unit.mapped_types.mappedtypes;

typedef PartialInner = {
	@:optional
	var value : Float;
	@:optional
	var nested : {
		var a : Bool;
		var b : Bool;
	};
};