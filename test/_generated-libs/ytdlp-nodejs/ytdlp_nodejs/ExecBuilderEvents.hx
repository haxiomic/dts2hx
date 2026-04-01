package ytdlp_nodejs;

/**
	Event map for exec builder events
**/
typedef ExecBuilderEvents = {
	var start : ts.Tuple1<String>;
	var progress : ts.Tuple1<VideoProgress>;
	var beforeDownload : ts.Tuple1<DownloadedVideoInfo>;
	var afterDownload : ts.Tuple1<DownloadedVideoInfo>;
	var stdout : ts.Tuple1<String>;
	var stderr : ts.Tuple1<String>;
	var data : ts.Tuple1<ExecBuilderEvents>;
	var error : ts.Tuple1<js.lib.Error>;
	var complete : ts.Tuple1<ExecBuilderResult>;
	var end : std.Array<Any>;
};