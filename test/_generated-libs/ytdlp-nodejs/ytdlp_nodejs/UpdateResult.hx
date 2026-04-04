package ytdlp_nodejs;

/**
	Result of the `update` command.
**/
typedef UpdateResult = {
	var method : String;
	var binaryPath : String;
	@:optional
	var version : String;
	@:optional
	var verified : Bool;
};