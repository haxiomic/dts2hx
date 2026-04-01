package ytdlp_nodejs;

/**
	Progress update data emitted during download.
**/
typedef VideoProgress = {
	/**
		Output filename (may be '-' when streaming to stdout)
	**/
	var filename : String;
	/**
		Current status: 'downloading' during download, 'finished' when complete
	**/
	var status : String;
	/**
		Downloaded bytes (may be undefined when streaming)
	**/
	@:optional
	var downloaded : Float;
	/**
		Formatted downloaded bytes string
	**/
	@:optional
	var downloaded_str : String;
	/**
		Total bytes (may be undefined when file size is unknown)
	**/
	@:optional
	var total : Float;
	/**
		Formatted total bytes string
	**/
	@:optional
	var total_str : String;
	/**
		Download speed in bytes/sec (may be undefined)
	**/
	@:optional
	var speed : Float;
	/**
		Formatted speed string
	**/
	@:optional
	var speed_str : String;
	/**
		Estimated time remaining in seconds
	**/
	@:optional
	var eta : Float;
	/**
		Formatted ETA string
	**/
	@:optional
	var eta_str : String;
	/**
		Download percentage (0-100, may be undefined when total is unknown)
	**/
	@:optional
	var percentage : Float;
	/**
		Formatted percentage string
	**/
	@:optional
	var percentage_str : String;
};