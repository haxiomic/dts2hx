package unit.interface_;

/**
	CallSignature and Constructor
	from lib.es5.d.ts
**/
typedef ErrorConstructor = {
	function new(?message:String);
	@:selfCall
	function call(?message:String):Error;
	final prototype : Error;
};