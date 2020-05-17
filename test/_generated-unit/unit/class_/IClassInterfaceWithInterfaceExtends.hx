package unit.class_;

typedef IClassInterfaceWithInterfaceExtends = {
	@:overload(function(baseCallSig:String):BaseInterface { })
	@:selfCall
	function call(extendCallSig:Float):ClassInterfaceWithInterfaceExtends;
	var interfaceField : Float;
	var classField : Bool;
	var baseInterfaceField : String;
};