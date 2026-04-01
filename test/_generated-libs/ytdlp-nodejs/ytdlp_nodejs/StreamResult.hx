package ytdlp_nodejs;

/**
	Result type for stream operations
**/
typedef StreamResult = {
	/**
		Total bytes streamed
	**/
	var bytes : Float;
	/**
		Duration in milliseconds
	**/
	var duration : Float;
};