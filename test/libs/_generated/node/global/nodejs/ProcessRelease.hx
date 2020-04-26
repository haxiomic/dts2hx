package global.nodejs;
extern interface ProcessRelease {
	var name : String;
	@:optional
	var sourceUrl : String;
	@:optional
	var headersUrl : String;
	@:optional
	var libUrl : String;
	@:optional
	var lts : String;
}