package ts.lib;
typedef ErrorConstructor = {
	@:selfCall
	function call(?message:String):IError;
	final prototype : IError;
};