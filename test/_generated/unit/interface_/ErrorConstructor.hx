package unit.interface_;
/**
	CallSignature and Constructor
	from lib.es5.d.ts
**/
extern interface ErrorConstructor {
	@:selfCall
	function call(?message:String):Error;
	var prototype : Error;
}