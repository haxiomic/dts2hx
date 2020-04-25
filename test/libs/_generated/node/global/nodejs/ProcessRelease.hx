package global.nodejs;
extern interface ProcessRelease {
	var name : String;
	@:optional
	var sourceUrl : Null<String>;
	@:optional
	var headersUrl : Null<String>;
	@:optional
	var libUrl : Null<String>;
	@:optional
	var lts : Null<String>;
}