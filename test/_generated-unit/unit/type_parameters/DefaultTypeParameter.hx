package unit.type_parameters;
extern typedef DefaultTypeParameter<DefaultBool> = {
	@:selfCall
	function call(callSignatureArg:DefaultBool):DefaultBool;
	var field : DefaultBool;
	var fieldUnion : haxe.extern.EitherType<String, DefaultBool>;
	var fieldTupleUnion : haxe.extern.EitherType<String, ts.lib.Tuple1<DefaultBool>>;
	@:overload(function(arg:DefaultBool, argTuple:ts.lib.Tuple1<DefaultBool>, argUnion:haxe.extern.EitherType<String, DefaultBool>):DefaultBool { })
	function fn(?optionalOverloadArg:DefaultBool):DefaultBool;
};