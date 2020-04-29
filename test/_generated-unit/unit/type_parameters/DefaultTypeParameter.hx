package unit.type_parameters;
extern typedef DefaultTypeParameter<X> = {
	var field : X;
	var fieldUnion : haxe.extern.EitherType<Float, X>;
	var fieldTupleUnion : haxe.extern.EitherType<Float, js.lib.Tuple1<X>>;
	function fn(arg:X, argTuple:js.lib.Tuple1<X>, argUnion:haxe.extern.EitherType<Float, X>):X;
};