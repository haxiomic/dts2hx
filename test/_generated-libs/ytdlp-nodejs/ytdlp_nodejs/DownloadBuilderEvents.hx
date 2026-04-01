package ytdlp_nodejs;

/**
	Event map for download builder events
**/
typedef DownloadBuilderEvents = {
	var start : ts.Tuple1<String>;
	var progress : ts.Tuple1<VideoProgress>;
	var beforeDownload : ts.Tuple1<DownloadedVideoInfo>;
	var stdout : ts.Tuple1<String>;
	var stderr : ts.Tuple1<String>;
	var error : ts.Tuple1<js.lib.Error>;
	var finish : ts.Tuple1<DownloadFinishResult>;
};