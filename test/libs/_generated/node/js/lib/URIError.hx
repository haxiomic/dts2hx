package js.lib;
@:native("URIError") @:interface extern class URIError {
	function new(?message:String);
	var name : String;
	var message : String;
	@:optional
	var stack : Null<String>;
	@:selfCall
	static function call(?message:String):URIError;
	static final prototype : URIError;
}