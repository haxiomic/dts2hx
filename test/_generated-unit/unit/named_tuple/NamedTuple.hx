package unit.named_tuple;

/**
	See https://github.com/microsoft/TypeScript/blob/master/doc/spec.md#333-tuple-types
**/
@:jsRequire("./unit/named-tuple", "NamedTuple") @valueModuleOnly extern class NamedTuple {
	static var x : unit.named_tuple.namedtuple.KeyValuePair<Float, String>;
}