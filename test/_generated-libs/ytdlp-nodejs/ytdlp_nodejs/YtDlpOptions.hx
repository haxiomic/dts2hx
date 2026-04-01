package ytdlp_nodejs;

/**
	Global configuration options for YtDlp instance.
**/
typedef YtDlpOptions = {
	@:optional
	var binaryPath : String;
	@:optional
	var ffmpegPath : String;
};