package unit.class_;
@:jsRequire("./unit/class", "ClassInterfaceWithInterfaceExtends") extern class ClassInterfaceWithInterfaceExtends {
	@:overload(function(baseCallSig:String):BaseInterface { })
	@:selfCall
	function call(extendCallSig:Float):IClassInterfaceWithInterfaceExtends;
	var interfaceField : Float;
	var classField : Bool;
	var baseInterfaceField : String;
}