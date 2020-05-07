package ts.lib;
typedef ErrorConstructor = {
	@:selfCall
	function call(?message:String):Error;
	final prototype : Error;
};