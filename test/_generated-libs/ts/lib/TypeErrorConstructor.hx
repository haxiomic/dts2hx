package ts.lib;
typedef TypeErrorConstructor = {
	@:selfCall
	function call(?message:String):ITypeError;
	final prototype : ITypeError;
};