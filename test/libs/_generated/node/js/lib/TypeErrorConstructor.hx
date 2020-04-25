package js.lib;
extern interface TypeErrorConstructor {
	@:selfCall
	function call(?message:String):TypeError;
	final prototype : TypeError;
}