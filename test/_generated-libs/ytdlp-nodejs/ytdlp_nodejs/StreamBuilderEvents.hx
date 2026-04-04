package ytdlp_nodejs;

/**
	Event map for stream builder events
**/
typedef StreamBuilderEvents = {
	var start : ts.Tuple1<String>;
	var progress : ts.Tuple1<VideoProgress>;
	var beforeDownload : ts.Tuple1<DownloadedVideoInfo>;
	var data : ts.Tuple1<StreamBuilderEvents>;
	var stderr : ts.Tuple1<String>;
	var error : ts.Tuple1<js.lib.Error>;
	var end : std.Array<Any>;
};