package unit.mapped_types.mappedtypes;

typedef RecordWithUnion = {
	var x : ts.AnyOf2<String, Float>;
	var y : ts.AnyOf2<String, Float>;
	var z : ts.AnyOf2<String, Float>;
};