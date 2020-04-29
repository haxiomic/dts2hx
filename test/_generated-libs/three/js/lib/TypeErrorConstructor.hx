package js.lib;
extern typedef TypeErrorConstructor = {
	@:selfCall
	function call(?message:String):ITypeError;
	final prototype : ITypeError;
};