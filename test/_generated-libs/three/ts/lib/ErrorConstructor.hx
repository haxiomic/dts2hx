package ts.lib;
extern typedef ErrorConstructor = {
	@:selfCall
	function call(?message:String):IError;
	final prototype : IError;
};