package ytdlp_nodejs;

/**
	Result type for pipe operations
**/
typedef ExecPipeResult = {
	/**
		Total bytes streamed
	**/
	var bytes : Float;
	/**
		Duration in milliseconds
	**/
	var duration : Float;
	/**
		Downloaded video info (if available)
	**/
	@:optional
	var info : DownloadedVideoInfo;
	/**
		Output (if available)
	**/
	var output : String;
};