package unit.symbols;
extern interface CallableInterface {
	@:selfCall
	function call(anotherSignature:Any):Float;
	var field : String;
}