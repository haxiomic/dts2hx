package unit.type_parameters;

typedef DefaultTypeParameterExtension = {
	@:selfCall
	function call(callSignatureArg:Bool):Bool;
	var extensionField : Float;
	var field : Bool;
	var fieldUnion : ts.AnyOf2<String, Bool>;
	var fieldTupleUnion : ts.AnyOf2<String, ts.Tuple1<Bool>>;
	@:overload(function(arg:Bool, argTuple:ts.Tuple1<Bool>, argUnion:ts.AnyOf2<String, Bool>):Bool { })
	function fn(?optionalOverloadArg:Bool):Bool;
};