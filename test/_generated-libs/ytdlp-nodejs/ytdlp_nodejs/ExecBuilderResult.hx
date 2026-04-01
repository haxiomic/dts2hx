package ytdlp_nodejs;

/**
	Result type for exec operations (when not piping)
**/
typedef ExecBuilderResult = {
	/**
		Standard output from the command
	**/
	var stdout : String;
	/**
		Standard error output from the command
	**/
	var stderr : String;
	/**
		Exit code (null if process was terminated by signal)
	**/
	var exitCode : Null<Float>;
	/**
		Full command that was executed
	**/
	var command : String;
	/**
		Downloaded video info (if available)
	**/
	@:optional
	var info : Array<DownloadedVideoInfo>;
	/**
		Output (if available)
	**/
	var output : String;
	/**
		File paths (if available)
	**/
	@:optional
	var filePaths : Array<String>;
};