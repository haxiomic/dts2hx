package ytdlp_nodejs;

/**
	Result returned by downloadAsync.
**/
typedef DownloadResult = {
	/**
		Raw command output
	**/
	var output : String;
	/**
		Downloaded video/audio file path
	**/
	var filePaths : Array<String>;
	/**
		Video information after download (including post-processing)
	**/
	@:optional
	var info : Array<DownloadedVideoInfo>;
};