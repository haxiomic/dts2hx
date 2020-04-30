package ts.lib;
@:native("URIError") extern class URIError {
	function new(?message:String);
	@:selfCall
	static function call(?message:String):IURIError;
	static final prototype : IURIError;
}