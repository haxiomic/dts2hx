package ytdlp_nodejs;

/**
	Metadata for a downloaded file.
**/
typedef FileMetadata = {
	var name : String;
	var type : String;
	@:optional
	var size : Float;
};