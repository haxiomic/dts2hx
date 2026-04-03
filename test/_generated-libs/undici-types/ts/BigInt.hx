package ts;

/**
	JavaScript BigInt type — arbitrary-precision integers. Created via `js.Syntax.code("BigInt(...)")`.
**/
@:forward extern abstract BigInt(Dynamic) from Dynamic to Dynamic {
	/**
		 Returns a string representation of the BigInt value. 
	**/
	public function toString(?radix:Float):String;
	/**
		 Returns the primitive BigInt value. 
	**/
	public function valueOf():ts.BigInt;
	public function toLocaleString(?locales:String, ?options:Dynamic):String;
}