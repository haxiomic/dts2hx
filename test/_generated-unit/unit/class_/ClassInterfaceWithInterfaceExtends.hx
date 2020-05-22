package unit.class_;

@:jsRequire("./unit/class", "ClassInterfaceWithInterfaceExtends") extern class ClassInterfaceWithInterfaceExtends {
	function new();
	@:overload(function(baseCallSig:String):BaseInterface { })
	@:selfCall
	function call(extendCallSig:Float):ClassInterfaceWithInterfaceExtends;
	var interfaceField : Float;
	var classField : Bool;
	var baseInterfaceField : String;
	static var prototype : ClassInterfaceWithInterfaceExtends;
}