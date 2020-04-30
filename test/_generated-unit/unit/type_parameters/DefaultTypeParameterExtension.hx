package unit.type_parameters;
extern typedef DefaultTypeParameterExtension = {
	@:selfCall
	function call(callSignatureArg:Bool):Bool;
	var extensionField : Float;
	var field : Bool;
	var fieldUnion : haxe.extern.EitherType<String, Bool>;
	var fieldTupleUnion : haxe.extern.EitherType<String, ts.lib.Tuple1<Bool>>;
	@:overload(function(arg:Bool, argTuple:ts.lib.Tuple1<Bool>, argUnion:haxe.extern.EitherType<String, Bool>):Bool { })
	function fn(?optionalOverloadArg:Bool):Bool;
};