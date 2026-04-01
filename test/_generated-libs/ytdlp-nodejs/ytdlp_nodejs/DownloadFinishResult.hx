package ytdlp_nodejs;

/**
	Result emitted by the 'finish' event on DownloadProcess.
**/
typedef DownloadFinishResult = {
	/**
		Raw command output
	**/
	var output : String;
	/**
		Downloaded video/audio file paths
	**/
	var filePaths : Array<String>;
	/**
		Video information after download (including post-processing)
	**/
	var info : Array<DownloadedVideoInfo>;
	/**
		Stderr output
	**/
	var stderr : String;
};