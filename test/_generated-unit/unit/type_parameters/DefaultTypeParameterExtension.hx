package unit.type_parameters;
extern typedef DefaultTypeParameterExtension = {
	var extensionField : Float;
	var field : Bool;
	var fieldUnion : haxe.extern.EitherType<Float, Bool>;
	var fieldTupleUnion : haxe.extern.EitherType<Float, js.lib.Tuple1<Bool>>;
	function fn(arg:X, argTuple:js.lib.Tuple1<X>, argUnion:haxe.extern.EitherType<Float, X>):X;
};