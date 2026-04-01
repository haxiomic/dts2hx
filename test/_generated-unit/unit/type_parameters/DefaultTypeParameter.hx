package unit.type_parameters;

typedef DefaultTypeParameter<DefaultBool> = {
	@:selfCall
	function call(callSignatureArg:DefaultBool):DefaultBool;
	var field : DefaultBool;
	var fieldUnion : ts.AnyOf2<String, DefaultBool>;
	var fieldTupleUnion : ts.AnyOf2<String, ts.Tuple1<DefaultBool>>;
	@:overload(function(arg:DefaultBool, argTuple:ts.Tuple1<DefaultBool>, argUnion:ts.AnyOf2<String, DefaultBool>):DefaultBool { })
	function fn(?optionalOverloadArg:DefaultBool):DefaultBool;
};