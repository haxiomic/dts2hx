package ts.lib;
typedef TypeErrorConstructor = {
	@:selfCall
	function call(?message:String):TypeError;
	final prototype : TypeError;
};