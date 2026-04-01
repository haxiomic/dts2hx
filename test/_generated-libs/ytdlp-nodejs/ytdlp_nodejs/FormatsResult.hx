package ytdlp_nodejs;

/**
	Result of `getFormats`. Can be JSON info or a parsed table.
**/
typedef FormatsResult = ts.AnyOf2<{
	var source : String;
	var info : ts.AnyOf2<VideoInfo, PlaylistInfo>;
	var formats : Array<VideoFormat>;
}, {
	var source : String;
	var table : FormatTable;
}>;